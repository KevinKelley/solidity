pragma experimental SMTChecker;

contract C
{
	function f(uint x) public pure {
		require(x < 100);
		for(uint i = 0; i < 10; ++i) {
			x = x + 1;
		}
		assert(x < 14);
	}
}
// ----
// Warning: (153-167): Assertion violation happens here
