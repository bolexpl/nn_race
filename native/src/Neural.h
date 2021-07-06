#ifndef GDNEURAL_NEURAL_H
#define GDNEURAL_NEURAL_H

#include <Godot.hpp>
#include <Reference.hpp>
#include <PoolArrays.hpp>
#include "matlib/GdNeural.h"

namespace godot {

    class Neural : public Reference {
    GODOT_CLASS(Neural, Reference)
    public:
        Neural() {
            classInstance = new GdNeural();
        }

        ~Neural() {
            delete classInstance;
        }

        /** `_init` must exist as it is called by Godot. */
        void _init() {}

        PoolRealArray norm(PoolRealArray args);

        PoolRealArray predict(PoolRealArray args, int ver);

        static void _register_methods();

    private:
        GdNeural *classInstance;
    };
}

#endif //GDNEURAL_NEURAL_H
