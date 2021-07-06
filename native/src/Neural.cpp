#include "Neural.h"

#include <Godot.hpp>

using namespace godot;

void Neural::_register_methods() {
    register_method("predict", &Neural::predict);
    register_method("norm", &Neural::norm);
}

PoolRealArray Neural::norm(PoolRealArray args) {
    PoolRealArray::Read r = args.read();

    PoolRealArray result;
    for (int i = 0; i < args.size() - 1; i++) {
        result.append(r[i] / 750);
    }
    result.append(r[5] / 400);

    return result;
}

PoolRealArray Neural::predict(PoolRealArray args, int ver) {
    double dv[6];
    double b_y1[2];
    for (int idx1{0}; idx1 < 6; idx1++) {
        dv[idx1] = args.read()[idx1];
    }

    switch (ver) {
        case 1:
            classInstance->gdNet(dv, b_y1);
            break;
        case 2:
            classInstance->gdBiggerNet(dv, b_y1);
            break;
        default:
            classInstance->gdFilterNet(dv, b_y1);
            break;
    }

    PoolRealArray result;
    result.append((float) b_y1[0]);
    result.append((float) b_y1[1]);
    return result;
}


