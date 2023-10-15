// Copyright (C) 2019-2021  The SymbiFlow Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: mailbox_non_blocking
:description: non-blocking mailbox test
:tags: 15.4
:type: simulation elaboration parsing
*/
module top();

mailbox #(string) m;

initial begin
	string msg = "abc";
	string r;
	string r_peek;
	int i;
	m = new();
	i = m.try_put(msg);
	m.peek(r_peek);
	$svt_assert("(%d == 1)", m.num());
	i = m.try_get(r);
	$svt_assert("('%s' == '%s')", r, r_peek);
end

endmodule
