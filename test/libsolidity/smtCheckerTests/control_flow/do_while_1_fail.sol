pragma experimental SMTChecker;

contract C
{
	function f(uint x) public pure {
		require(x < 100);
		do {
			x = x + 1;
		} while (x < 10);
		assert(x < 14);
	}
}
// ----
// Warning: (143-157): Assertion violation happens here
