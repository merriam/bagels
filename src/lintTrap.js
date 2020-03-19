/* Trap of various errors and issues that could be caught by lint. */

var seeMeBeNotConstOrLet = true;     // use let or const, unused, multiple spaces,
let foo;
const bar = 2;
bar = bar + 4; //assign to const; no space after //;

bob = foo + 1; // bob not defined, and foo used before assigned

function func(a, b) {
  a = a == undefined ? 1 : a; // should use default argument
  // parameter b unused
  a = 3;   // earlier a unused
  let c;   // declaration not at top
  c = 3;   // could be on previous line
  c = function(x) { return 3};   // unnamed func; also, could use arrow function
  c = d;    // undefined variable
}
