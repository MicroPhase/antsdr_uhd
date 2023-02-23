/*
 * Simple sysfs poll
 *
 * Copyright 2017 Analog Devices Inc.
 *
 * Licensed under the GPL-2.
 */

#include <poll.h>
#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>


int main(int argc, char *argv[]) {
	struct pollfd fdlist[1];
	int fd, err;
	char buf[80];

	if (argc < 2)
		return 1;

	fd = open(argv[1], O_RDONLY);

	fdlist[0].fd = fd;
	fdlist[0].events = POLLPRI | POLLERR;

	read(fdlist[0].fd, buf, sizeof(buf));

	err = poll(fdlist, 1, -1);
	if (err < 0) {
		perror("poll");
		return 1;
	}

	err = lseek(fdlist[0].fd, 0 , SEEK_SET);
	if (err < 0) {
		perror("lseek");
		return 1;
	}

	err = read(fdlist[0].fd, buf, sizeof(buf));
	if (err > 0) {
		buf[err] = 0;
		printf("%s", buf);
		close(fdlist[0].fd);
		return 0;
	}

	perror("read");
	return 1;
}
