function OnTheWeb() {
	window.location.assign("https://wiki.analog.com/m2k");
}

function versionCompare(v1, v2) {
	var v1parts = ("" + v1).replace(/[a-zA-Z]/g, "").replace("-", ".").split("."),
	v2parts = ("" + v2).replace(/[a-zA-Z]/g, "").replace("-", ".").split("."),
	minLength = Math.min(v1parts.length, v2parts.length),
	p1, p2, i;
	console.log(v1parts + " || " + v2parts);
	for(i = 0; i < minLength; i++) {
		p1 = parseInt(v1parts[i], 10);
		p2 = parseInt(v2parts[i], 10);
		if (isNaN(p1)){ p1 = v1parts[i]; }
		if (isNaN(p2)){ p2 = v2parts[i]; }
		if (p1 == p2) {
			continue;
		}else if (p1 > p2) {
			return 1;
		}else if (p1 < p2) {
			return -1;
		}
		return NaN;
	}
	if (v1parts.length === v2parts.length) {
		return 0;
	}
	return (v1parts.length < v2parts.length) ? -1 : 1;
}

var latest_libiio;
var latest_scopy;
var mac = false;

function GetDriverurl() {
	mac = navigator.platform.match(/Mac/i) ? true : false;
	if (mac) {
		var uAgent = navigator.userAgent.toLowerCase();
		//uAgent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36".toLowerCase();
		var test = uAgent.match(/mac os x 10_[0-9]*/);
		if (test) {
			mac = "darwin-" + test[0].match(/10_[0-9]*/)[0].replace("_", ".");
		}
		document.getElementById('prompt0').innerHTML = "adi-mm:tests analogdevices$";
		document.getElementById('prompt1').innerHTML = "adi-mm:tests analogdevices$";
	}
	var win = navigator.platform.indexOf('Win') > -1 ? true : false;
	if (win) {
		document.getElementById('prompt0').innerHTML = "C:&#x5C;>";
		document.getElementById('prompt1').innerHTML = "C:&#x5C;>";
	} else
		document.getElementById('hidedriver').style.display = "none";
	var linux = navigator.platform.indexOf('Linux') > -1 ? true : false;
	if (mac || win || linux) {
		document.getElementById('hidelib').style.display = "inline";
		document.getElementById('hidescopy').style.display = "inline";
	} else {
		if (navigator.platform.match(/(Linux|iPhone|iPod|iPad|Android)/i)) {
			document.getElementById('libtest').innerHTML = "Sorry, we don't support " + navigator.platform + " yet. Please ask.";
			jQuery('#libtest').attr ('href', "https://ez.analog.com/university-program");
		} else
			document.getElementById('libtest').innerHTML = "Unsupported host \"" + navigator.platform + "\". Please check, and report an issue";
		return;
	}

	var i; var j;

	var req = jQuery.getJSON("https://api.github.com/repos/analogdevicesinc/libiio/releases/latest");
	req.fail(function() {
		document.getElementById('hidelib').style.display = "none";
		document.getElementById('hidescopy').style.display = "none";
		latest_libiio = null;
	});
	req.done(function(response) {
		latest_libiio = response;
		var libiio_os = document.getElementById("libiio-os");
		var scopy_os = document.getElementById("scopy-os");
		var suffix = "";
		for (i = 0; i < latest_libiio.assets.length; i++) {
			os = latest_libiio.assets[i].name.split('-')[2];
			suffix = os.slice(-4);
			if (suffix == ".zip" ) {
				os = os.slice(0, os.length-4);
			}
			for (j = 0; j < libiio_os.length; j++) {
				if (os.match(libiio_os[j].value))
					break;
			}
			if (j == libiio_os.length) {
				libiio_os.options[libiio_os.options.length] = new Option(os);
				if ((win && os == "Windows") || (mac && os == "darwin") || (linux && os == "ubuntu")) {
					libiio_os.value = os;
					libiio_type();
				}
			}
		}
		if (latest_libiio.hasOwnProperty('tarball_url') || latest_libiio.hasOwnProperty('zipball_url'))
			libiio_os.options[libiio_os.options.length] = new Option("source");
	});

	var req = jQuery.getJSON("https://api.github.com/repos/analogdevicesinc/scopy/releases/latest");
	req.fail(function() {
		document.getElementById('hidescopy').style.display = "none";
		latest_scopy = null;
	});
	req.done(function(response) {
		latest_scopy = response;
		var scopy_os = document.getElementById("scopy-os");
		var suffix = "";
		for (i = 0; i < latest_scopy.assets.length; i++) {
			var os = latest_scopy.assets[i].name.split('-')[2];
			if (os.length == 0)
				os = latest_scopy.assets[i].name.split(' ')[0];
			os = os.split('_')[0];
			for (j = 0; j < scopy_os.length; j++) {
				if (os.match(scopy_os[j].value))
					break;
			}
			if (j == scopy_os.length) {
				scopy_os.options[scopy_os.options.length] = new Option(os);
				if ((win && os == "Windows") || (mac && os == "osx") || (linux && os == "Linux")) {
					scopy_os.value = os;
					scopy_type();
				}
			}
		}
		if (latest_scopy.hasOwnProperty('tarball_url') || latest_scopy.hasOwnProperty('zipball_url'))
			scopy_os.options[scopy_os.options.length] = new Option("source");
	});
	if (win) {
		req = jQuery.getJSON("https://api.github.com/repos/analogdevicesinc/plutosdr-m2k-drivers-win/releases/latest");
		req.done(function(response) {
			for (i = 0; i < response.assets.length; i++) {
				if (response.assets[i].content_type == "application/x-msdownload") {
					jQuery('#drivertest').attr ('href', response.assets[i].browser_download_url);
					document.getElementById('drivertest').innerHTML = response.name;
				}
			}
			document.getElementById('hidemacinstall').style.display = "none";
			document.getElementById('hidelinuxinstall').style.display = "none";
		});
	} else if (mac) {
		document.getElementById('hidelinuxinstall').style.display = "none";
		document.getElementById('hidewininstall').style.display = "none";
	} else {
		document.getElementById('hidedriver').style.display = "none";
		document.getElementById('hidewininstall').style.display = "none";
		document.getElementById('hidemacinstall').style.display = "none";
	}
}

function libiio_type() {
	var select = document.getElementById("libiio-type");
	var os = document.getElementById("libiio-os").value;
	select.onchange = null;
	var i;
	for (i = select.options.length - 1 ; i >= 0 ; i--) {
		select.remove(i);
	}
	var suffix = "";
	for (i = 0; i < latest_libiio.assets.length; i++) {
		if (latest_libiio.assets[i].browser_download_url.match(os)) {
			suffix = latest_libiio.assets[i].browser_download_url.slice(-4);
			if (suffix == "r.gz" ) {
				suffix = ".tar.gz";
			}
			for (j = 0; j < select.length; j++) {
				if (suffix.match(select[j].value))
					break;
				}
				if (j == select.length) {
					select.options[select.options.length] = new Option(suffix);
					if (os.match('centos') && suffix.match('.rpm')) {
						select.value = suffix;
					}
			}
		}
	}
	if (os.match('source')) {
		if (latest_libiio.hasOwnProperty('tarball_url'))
			select.options[select.options.length] = new Option('.tar');
		if (latest_libiio.hasOwnProperty('zipball_url'))
			select.options[select.options.length] = new Option('.zip');
	}
	select.onchange = libiio_ver;
	libiio_ver();
}

function scopy_type() {
	var type = select = document.getElementById("scopy-type");
	var os = document.getElementById("scopy-os").value;
	select.onchange = null;
	var i;
	for (i = select.options.length - 1 ; i >= 0 ; i--) {
		type.remove(i);
	}
	var suffix = "";
	for (i = 0; i < latest_scopy.assets.length; i++) {
		if (latest_scopy.assets[i].browser_download_url.match(os)) {
			suffix = latest_scopy.assets[i].browser_download_url.slice(-4);
			if (suffix == "r.gz" ) {
				suffix = ".tar.gz";
			}
			for (j = 0; j < type.length; j++) {
				if (suffix.match(select[j].value))
					break;
			}
			if (j == type.length) {
				type.options[select.options.length] = new Option(suffix);
			}
		}
	}
	if (os.match('source')) {
		if (latest_scopy.hasOwnProperty('tarball_url'))
			type.options[select.options.length] = new Option('.tar');
		if (latest_scopy.hasOwnProperty('zipball_url'))
			type.options[select.options.length] = new Option('.zip');
	}

	if (type.length == 1)
		document.getElementById('hidescopytype').style.display = "none";
	else
		document.getElementById('hidescopytype').style.display = "inline";

	type.onchange = scopy_url;
	scopy_url();
}


function libiio_ver() {
	var select = document.getElementById("ver-select");
	var os = document.getElementById("libiio-os").value;
	var suffix = document.getElementById("libiio-type").value;
	select.onchange = null;
	var i;
	for (i = select.options.length - 1 ; i >= 0 ; i--) {
		select.remove(i);
	}
	for (i = 0; i < latest_libiio.assets.length; i++) {
		if (latest_libiio.assets[i].browser_download_url.match(os) && latest_libiio.assets[i].browser_download_url.match(suffix)) {
			var file = latest_libiio.assets[i].name.replace(/libiio-[0-9]*\.[0-9]*.[a-z0-9]*-/, '');
			file = file.slice(0, file.length - suffix.length);
			select.options[select.options.length] = new Option(file);
			if (mac && (file.match(mac) ||
					file.match(/darwin-10.[0-9]*/) < mac)) {
				select.value = file;
				console.log('hit');
			}
		}
	}
	if (os.match('source')) {
		select.options[select.options.length] = new Option(latest_libiio.tag_name);
	}
	select.onchange = libiio_url;
	libiio_url();
}

function libiio_url() {
	var os = document.getElementById("libiio-os").value;
	var suffix = document.getElementById("libiio-type").value;
	var ver = document.getElementById("ver-select").value;
	var i, url;
	for (i = 0; i < latest_libiio.assets.length; i++) {
		url = latest_libiio.assets[i].browser_download_url;
		if (url.match(ver) && url.match(os) && url.match(suffix)) {
			jQuery('#libtest').attr ('href', url);
			document.getElementById('libtest').innerHTML = latest_libiio.assets[i].name;
		}
	}
	if (os.match('source')) {
		if (suffix.match('.tar')) {
			document.getElementById('libtest').innerHTML = "Source code (tar)";
			jQuery('#libtest').attr ('href', latest_libiio.tarball_url);
		}
		if (suffix.match('.zip')) {
			document.getElementById('libtest').innerHTML = "Source code (zip)";
			jQuery('#libtest').attr ('href', latest_libiio.zipball_url);
		}

	}
}

function scopy_url() {
	var os = document.getElementById("scopy-os").value;
	var suffix = document.getElementById("scopy-type").value;
	var i, url;
	for (i = 0; i < latest_scopy.assets.length; i++) {
		url = latest_scopy.assets[i].browser_download_url;
		if (url.match(os) && url.match(suffix)) {
			jQuery('#scopytest').attr ('href', url);
			document.getElementById('scopytest').innerHTML = latest_scopy.assets[i].name;
		}
	}
	if (os.match('source')) {
		if (suffix.match('.tar')) {
			document.getElementById('scopytest').innerHTML = "Source code (tar)";
			jQuery('#scopytest').attr ('href', latest_scopy.tarball_url);
		}
		if (suffix.match('.zip')) {
			document.getElementById('scopytest').innerHTML = "Source code (zip)";
			jQuery('#scopytest').attr ('href', latest_scopy.zipball_url);
		}
	}
}

function CheckFrmVersion() {
	GetDriverurl();
	var req = jQuery.getJSON("https://api.github.com/repos/analogdevicesinc/m2k-fw/releases/latest");
	req.fail(function() {
		document.getElementById('versiontest').innerHTML = "Can't check right now, try manually";
	});
	req.done(function(response) {
		var VerOnGithub = response.name;
		var res = versionCompare("#BUILD#", VerOnGithub);
		var message;
		if (res < 0) {
			message = "Newer version available online (Version " + VerOnGithub + " )";
			document.getElementById('versionsection').className = "download";
		} else  if (res > 0) {
			message = "Wow! Your M2k Firmware Version #BUILD# is newer than (" + VerOnGithub + ") on Github.";
			document.getElementById('versionsection').className = "";
			document.getElementById('fw-download').style.visibility = "hidden";
			document.getElementById('hideupgrade').style.display = "none";
		} else if (res == 0) {
			message = "M2k is using the same version as latest release!";
			document.getElementById('versionsection').className = "";
			document.getElementById('fw-download').style.visibility = "hidden";
			document.getElementById('hideupgrade').style.display = "none";
		} else {
			message = "Failure in comparing version, latest upstream is " + VerOnGithub;
			document.getElementById('versionsection').className = "";
		}
		document.getElementById('versiontest').innerHTML = message;
		document.getElementById('fw-download').innerHTML = "Download version " + VerOnGithub;
		jQuery('#plutsdr-fw-download').attr ('href', response.assets[0].browser_download_url);
	});
}

window.onload = CheckFrmVersion;
