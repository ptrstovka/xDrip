package com.eveningoutpost.dexdrip.g5model;

import com.eveningoutpost.dexdrip.Models.JoH;
import com.eveningoutpost.dexdrip.Models.UserError;

// jamorham

class ResetTxMessage extends BaseMessage {
    static final byte opcode = 0x42;

    ResetTxMessage() {
        init(opcode, 3);
        UserError.Log.d(TAG, "ResetTx dbg: " + JoH.bytesToHex(byteSequence));
    }
}
