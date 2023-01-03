//
// Copyright 2013-2014 Ettus Research LLC
// Copyright 2018 Ettus Research, a National Instruments Company
// Copyright 2019 Ettus Research, a National Instruments Brand
//
// SPDX-License-Identifier: GPL-3.0-or-later
//

#ifndef INCLUDED_B200_CORES_HPP
#define INCLUDED_B200_CORES_HPP

#include "uhd/utils/noncopyable.hpp"
#include "uhdlib/usrp/common/adf4001_ctrl.hpp"
#include "uhdlib/usrp/cores/spi_core_3000.hpp"
#include <memory>
#include <mutex>

class ant_local_spi_core : uhd::noncopyable, public uhd::spi_iface
{
public:
    typedef std::shared_ptr<ant_local_spi_core> sptr;

    enum perif_t { CODEC, PLL };

    ant_local_spi_core(uhd::wb_iface::sptr iface, perif_t default_perif);

    uint32_t transact_spi(int which_slave,
        const uhd::spi_config_t& config,
        uint32_t data,
        size_t num_bits,
        bool readback) override;

    void change_perif(perif_t perif);
    void restore_perif();

    static sptr make(uhd::wb_iface::sptr iface, perif_t default_perif = CODEC);

private:
    spi_core_3000::sptr _spi_core;
    perif_t _current_perif;
    perif_t _last_perif;
    std::mutex _mutex;
};

class ant_ref_pll_ctrl : public uhd::usrp::adf4001_ctrl
{
public:
    typedef std::shared_ptr<ant_ref_pll_ctrl> sptr;

    ant_ref_pll_ctrl(ant_local_spi_core::sptr spi);
    void set_lock_to_ext_ref(bool external) override;

private:
    ant_local_spi_core::sptr _spi;
};

#endif /* INCLUDED_B200_CORES_HPP */
