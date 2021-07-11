#include "Neural.h"

#include <Godot.hpp>

using namespace godot;

void Neural::_register_methods() {
    register_method("predict", &Neural::predict);
    register_method("norm", &Neural::norm);
    register_method("algorithms", &Neural::algorithms);
}

PoolRealArray Neural::norm(PoolRealArray args) {
    PoolRealArray::Read r = args.read();

    PoolRealArray result;
    for (int i = 0; i < args.size() - 2; i++) {
        result.append(r[i] / 700);
    }
    result.append((r[args.size() - 1] / 400));

    return result;
}

PoolStringArray Neural::algorithms() {
    PoolStringArray result;
    result.append(String("gdNet_30_1_n"));
    result.append(String("gdNet_30_1_r"));
    result.append(String("gdNet_30_1_f"));
    result.append(String("gdNet_30_1_n_mix"));
    result.append(String("gdNet_30_1_r_mix"));
    result.append(String("gdNet_30_1_f_mix"));
    result.append(String("gdNet_40_1_n"));
    result.append(String("gdNet_40_1_r"));
    result.append(String("gdNet_40_1_f"));
    result.append(String("gdNet_40_1_n_mix"));
    result.append(String("gdNet_40_1_r_mix"));
    result.append(String("gdNet_40_1_f_mix"));
    return result;
}

PoolRealArray Neural::predict(PoolRealArray args, int ver) {
    double dv[6];
    double b_y1[2];
    for (int idx1{0}; idx1 < 6; idx1++) {
        dv[idx1] = args.read()[idx1];
    }

    switch (ver) {
        case 0:
            classInstance->gdNet_30_1_n(dv, b_y1);
            break;
        case 1:
            classInstance->gdNet_30_1_r(dv, b_y1);
            break;
        case 2:
            classInstance->gdNet_30_1_f(dv, b_y1);
            break;
        case 3:
            classInstance->gdNet_30_1_n_mix(dv, b_y1);
            break;
        case 4:
            classInstance->gdNet_30_1_r_mix(dv, b_y1);
            break;
        case 5:
            classInstance->gdNet_30_1_f_mix(dv, b_y1);
            break;
        case 6:
            classInstance->gdNet_40_1_n(dv, b_y1);
            break;
        case 7:
            classInstance->gdNet_40_1_r(dv, b_y1);
            break;
        case 8:
            classInstance->gdNet_40_1_f(dv, b_y1);
            break;
        case 9:
            classInstance->gdNet_40_1_n_mix(dv, b_y1);
            break;
        case 10:
            classInstance->gdNet_40_1_r_mix(dv, b_y1);
            break;
        case 11:
            classInstance->gdNet_40_1_f_mix(dv, b_y1);
            break;
    }

    PoolRealArray result;
    result.append((float) b_y1[0]);
    result.append((float) b_y1[1]);
    return result;
}


