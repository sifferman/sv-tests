// Copyright (C) 2019-2021  The SymbiFlow Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: array_queries
:description: array query function tests
:tags: 20.7
:type: simulation elaboration parsing
*/

module top();

logic [31:0] arr;

initial begin
	$svt_assert("(%d == 0)", $unpacked_dimensions(arr));
	$svt_assert("(%d == 1)", $dimensions(arr));
	$svt_assert("(%d == 1)", $increment(arr));
	$svt_assert("(%d == 0)", $right(arr));
	$svt_assert("(%d == 31)", $left(arr));
	$svt_assert("(%d == 0)", $low(arr));
	$svt_assert("(%d == 31)", $high(arr));
	$svt_assert("(%d == 32)", $size(arr));
end

endmodule
