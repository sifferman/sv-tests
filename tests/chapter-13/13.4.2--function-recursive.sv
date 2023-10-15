// Copyright (C) 2019-2021  The SymbiFlow Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


// -*- coding: utf-8 -*-
// SPDX-License-Identifier: ISC
//
// Copyright (C) 2020 The SymbiFlow Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
/*
:name: function_recursive
:description: recursive function test
:tags: 13.4.2
:type: simulation elaboration parsing
*/
module top();

function automatic int factorial(int val);
	if(val == 0) return 1;
	return factorial(val-1) * val;
endfunction

initial
	begin
		$svt_assert("(%d == 1)", factorial(0));
		$svt_assert("(%d == 1)", factorial(1));
		$svt_assert("(%d == 2)", factorial(2));
		$svt_assert("(%d == 120)", factorial(5));
		$svt_assert("(%d == 39916800)", factorial(11));
	end
endmodule
