/* eslint lines-around-comment: "off" */
/* eslint max-len: "off" */
/* eslint no-inline-comments: "off" */
/* eslint quote-props: "off" */
/* eslint quotes: "off" */
/* eslint-env node */
// http://eslint.org/docs/rules/
module.exports = {
	"parserOptions": {
		"ecmaVersion": 6,
		"sourceType": "module",
		"ecmaFeatures": {
			"binaryLiterals": false,										// enable binary literals
			"blockBindings": true,											// enable let and const (aka block bindings)
			"defaultParams": true,											// enable default function parameters
			"forOf": true,															// enable for-of loops
			"modules": true,														// enable import ES6
			"generators": true,													// enable generators
			"objectLiteralComputedProperties": true,		// enable computed object literal property names
			"objectLiteralDuplicateProperties": false,	// enable duplicate object literal properties in strict mode
			"objectLiteralShorthandMethods": true,			// enable object literal shorthand methods
			"objectLiteralShorthandProperties": true,		// enable object literal shorthand properties
			"octalLiterals": true,											// enable octal literals
			"regexUFlag": true,													// enable the regular expression u flag
			"regexYFlag": true,													// enable the regular expression y flag
			"templateStrings": true,										// enable template strings
			"unicodeCodePointEscapes": true,						// enable code point escapes
			"jsx": true																	// enable JSX
		}
	},

	// Parser: esprima | babel-eslint
	"parser": "babel-eslint",

	"env": {
		"browser": true,              // browser global variables.
		"node": true,                 // Node.js global variables and Node.js-specific rules.
		"commonjs": true,             // CommonJS global variables and CommonJS scoping.
		"shared-node-browser": true,  // Globals common to both Node and Browser.
		"es6": true,                  // Enable all ECMASCript 6 features except for modules.
		"worker": true,               // Web Workers global variables.
		"amd": false,                 // defines require() and define() as global variables as per the amd spec.
		"mocha": true,                // adds all of the Mocha testing global variables.
		"jasmine": true,              // adds all of the Jasmine testing global variables for version 1.3 and 2.0.
		"jest": false,                // Jest global variables.
		"phantomjs": false,           // phantomjs global variables.
		"protractor": false,          // Protractor global variables.
		"qunit": false,               // QUnit global variables.
		"jquery": true,               // jquery global variables.
		"prototypejs": false,         // prototypejs global variables.
		"shelljs": false,             // shelljs global variables.
		"meteor": false,              // Meteor global variables.
		"mongo": false,               // MongoDB global variables.
		"applescript": false,         // AppleScript global variables.
		"nashorn": false,             // Java 8 Nashorn global variables.
		"atomtest": false,            // Atom test helper globals.
		"embertest": false,           // Ember test helper globals.
		"webextensions": false,       // WebExtensions globals.
		"greasemonkey": false         // GreaseMonkey globals.
	},

	"globals": {
		"angular": true
	},

	"plugins": [

		// e.g. "react" (must run `npm install eslint-plugin-react` first)
		"react"
	],

	"rules": {

		//-----------------------
		// Possible Errors
		//-----------------------

		"comma-dangle": ["warn", "never"],     // disallow trailing commas in object literals
		"no-cond-assign": ["error", "always"], // disallow assignment in conditional expressions
		"no-console": ["warn", {               // disallow use of console.log but allows console.warn and console.error
			"allow": ["warn", "error"]
		}],
		"no-constant-condition": "warn",       // disallow use of constant expressions in conditions
		"no-control-regex": "warn",            // disallow control characters in regular expressions
		"no-debugger": "warn",                 // disallow use of debugger
		"no-dupe-args": "error",               // disallow duplicate arguments in function definitions
		"no-dupe-keys": "error",               // disallow duplicate keys when creating object literals
		"no-empty": ["error", {                // disallow empty statements
			"allowEmptyCatch": true
		}],
		"no-empty-character-class": "error",   // disallow the use of empty character classes in regular expressions
		"no-ex-assign": "error",               // disallow assigning to the exception in a catch block
		"no-extra-boolean-cast": "off",        // disallow double-negation boolean casts in a boolean context
		"no-extra-parens": ["warn", "all", {   // disallow unnecessary parentheses (off by default)
			"conditionalAssign": true,
			"nestedBinaryExpressions": true
		}],
		"no-extra-semi": "warn",               // disallow unnecessary semicolons
		"no-func-assign": "error",             // disallow overwriting functions written as function declarations
		"no-inner-declarations": "off",        // disallow function or variable declarations in nested blocks
		"no-invalid-regexp": "error",          // disallow invalid regular expression strings in the RegExp constructor
		"no-irregular-whitespace": "warn",     // disallow irregular whitespace outside of strings and comments
		"no-negated-in-lhs": "error",          // disallow negation of the left operand of an in expression
		"no-obj-calls": "error",               // disallow the use of object properties of the global object (Math and JSON) as functions
		"no-regex-spaces": "warn",             // disallow multiple spaces in a regular expression literal
		"no-sparse-arrays": "error",           // disallow sparse arrays
		"no-unexpected-multiline": "off",      // disallow confusing multiline expressions (1 || 2).baz()
		"no-unreachable": "error",             // disallow unreachable statements after a return, throw, continue, or break statement
		"use-isnan": "error",                  // disallow comparisons with the value NaN
		"valid-jsdoc": "warn",                 // Ensure JSDoc comments are valid (off by default)
		"valid-typeof": "error",               // Ensure that the results of typeof are compared against a valid string

		//-----------------------
		// Best Practices
		//-----------------------

		"accessor-pairs": "off",                 // enforce getter and setter pairs in objects
		"array-callback-return": "error",        // enforce return statement in callbacks of array methods
		"block-scoped-var": "error",             // treat var statements as if they were block scoped (off by default)
		"complexity": "off",                     // specify the maximum cyclomatic complexity allowed in a program (off by default)
		"consistent-return": "error",            // require return statements to either always or never specify values
		"curly": "warn",                         // specify curly brace conventions for all control statements
		"default-case": "warn",                  // require default case in switch statements (off by default)
		"dot-location": "off",                   // enforce consistent newlines before and after dots
		"dot-notation": "warn",                  // encourages use of dot notation whenever possible
		"eqeqeq": "error",                       // require the use of === and !==
		"guard-for-in": "warn",                  // make sure for-in loops have an if statement (off by default)
		"no-alert": "error",                     // disallow the use of alert, confirm, and prompt
		"no-caller": "error",                    // disallow use of arguments.caller or arguments.callee
		"no-case-declarations": "error",         // disallow lexical declarations in case clauses
		"no-div-regex": "error",                 // disallow division operators explicitly at beginning of regular expression (off by default)
		"no-else-return": "error",               // disallow else after a return in an if (off by default)
		"no-empty-pattern": "error",             // disallow empty destructuring patterns
		"no-eq-null": "warn",                    // disallow comparisons to null without a type-checking operator (off by default)
		"no-eval": "error",                      // disallow use of eval()
		"no-extend-native": "error",             // disallow adding to native types
		"no-extra-bind": "error",                // disallow unnecessary function binding
		"no-extra-label": "error",               // disallow unnecesary labels in break statements
		"no-fallthrough": "off",                 // disallow fallthrough of case statements
		"no-floating-decimal": "warn",           // disallow the use of leading or trailing decimal points in numeric literals (off by default)
		"no-implicit-coercion": "off",           // disallow shorthand type conversions
		"no-implicit-globals": "warn",           // disallow var and named function declarations in the global scope
		"no-implied-eval": "error",              // disallow use of eval()-like methods
		"no-invalid-this": "off",                // disallow this keywords outside of classes or class-like objects
		"no-iterator": "error",                  // disallow usage of __iterator__ property
		"no-labels": "error",                    // disallow use of labeled statements
		"no-lone-blocks": "error",               // disallow unnecessary nested blocks
		"no-loop-func": "error",                 // disallow creation of functions within loops
		"no-magic-numbers": "off",               // disallow magic numbers (use constant vars instead)
		"no-multi-spaces": "warn",               // disallow use of multiple spaces
		"no-multi-str": "error",                 // disallow use of multiline strings
		"no-native-reassign": "error",           // disallow reassignments of native objects
		"no-new": "error",                       // disallow use of new operator when not part of the assignment or comparison
		"no-new-func": "error",                  // disallow use of new operator for Function object
		"no-new-wrappers": "warn",               // disallows creating new instances of String, Number, and Boolean
		"no-octal": "off",                       // disallow use of octal literals
		"no-octal-escape": "warn",               // disallow use of octal escape sequences in string literals, such as var foo = "Copyright \251";
		"no-param-reassign": "off",              // disallow reassigning function parameters, use var to store it
		"no-proto": "error",                     // disallow usage of __proto__ property
		"no-redeclare": "error",                 // disallow declaring the same variable more then once
		"no-return-assign": "error",             // disallow use of assignment in return statement
		"no-script-url": "error",                // disallow use of javascript: urls.
		"no-self-assign": "error",               // disallow assignments where both sides are exactly the same
		"no-self-compare": "error",              // disallow comparisons where both sides are exactly the same (off by default)
		"no-sequences": "error",                 // disallow use of comma operator
		"no-throw-literal": "error",             // disallow throwing literals as exceptions
		"no-unmodified-loop-condition": "error", // disallow unmodified loop conditions
		"no-unused-expressions": "error",        // disallow usage of expressions in statement position
		"no-unused-labels": "error",             // disallow unused labels
		"no-useless-call": "error",              // disallow unnecesary calls to .call() and .apply()
		"no-useless-concat": "error",            // disallow unnecessary concatenation of literals or template literals "a"+"b"->"ab"
		"no-useless-escape": "error",            // disallow unnecessary escape characters "ho\la"
		"no-void": "off",                        // disallow use of void operator (off by default)
		"no-warning-comments": "off",            // disallow usage of configurable warning terms in comments, e.g. TODO or FIXME (off by default)
		"no-with": "error",                      // disallow use of the with statement
		"radix": ["error", "as-needed"],         // require use of the second argument for parseInt() (off by default)
		"vars-on-top": "off",                    // requires to declare all vars on top of their containing scope (off by default)
		"wrap-iife": ["error", "outside"],       // require immediate function invocation to be wrapped in parentheses (off by default)
		"yoda": "error",                         // require or disallow Yoda conditions

		//-----------------------
		// Strict Mode
		//-----------------------
		// "strict": ["error", "global"],            // controls location of Use Strict Directives
		"strict": 0,

		//-----------------------
		// Variables
		//-----------------------

		// "init-declarations": ["error", "never", {    // require or disallow initialization in var declarations
		//  "ignoreForLoopInit": true
		// }],
		"init-declarations": "off",
		"no-catch-shadow": "error",            // disallow the catch clause parameter name being the same as a variable in the outer scope (off by default in the node environment)
		"no-delete-var": "error",              // disallow deletion of variables
		"no-label-var": "error",               // disallow labels that share a name with a variable
		"no-restricted-globals": ["error"],    // disallow specified global variables
		//    "no-shadow": ["error", {               // disallow declaration of variables already declared in the outer scope
		//      "builtinGlobals": true,
		//      "hoist": "all",
		//      "allow": ["window", "document"]
		//    }],
		"no-shadow": "off",
		"no-shadow-restricted-names": "error", // disallow shadowing of names such as arguments
		"no-undef": ["error", {                // disallow use of undeclared variables unless mentioned in a /*global */ block
			"typeof": false
		}],
		"no-undef-init": "off",                // disallow use of undefined when initializing variables
		"no-undefined": "warn",                // disallow use of undefined variable (off by default)
		"no-unused-vars": "warn",              // disallow declaration of variables that are not used in the code
		"no-use-before-define": ["error", {    // disallow use of variables before they are defined
			"functions": false,
			"classes": false
		}],

		//-----------------------
		// Node.js
		//-----------------------

		"callback-return": "error",                     // require return statements after callbacks
		"global-require": "error",                      // enforces require statement at the top of module
		"handle-callback-err": ["error", "^.*(e|E)rr*"], // enforces error handling in callbacks (off by default) (on by default in the node environment)
		"no-mixed-requires": ["warn", {                 // disallow mixing regular variable and require declarations (off by default) (on by default in the node environment)
			"grouping": false,
			"allowCall": false
		}],
		"no-new-require": "error",                      // disallow use of new operator with the require function (off by default) (on by default in the node environment)
		"no-path-concat": "warn",                       // disallow string concatenation with __dirname and __filename (off by default) (on by default in the node environment)
		"no-process-env": "error",                      // disallow use of process.env (off by default)
		"no-process-exit": "error",                     // disallow process.exit() (on by default in the node environment)
		"no-restricted-modules": "off",                 // restrict usage of specified node modules (off by default)
		"no-sync": "error",                             // disallow use of synchronous methods (off by default)

		//-----------------------
		// Stylistic Issues
		//-----------------------

		"array-bracket-spacing": ["error", "never"],      // enforce consistent spacing inside array brackets: [ a, b ] instead of [a, b]
		"block-spacing": ["error", "always"],                         // enforce consistent spacing inside single-line blocks: function(){ var a; }
		"brace-style": ["error", "1tbs", {                // enforce one true brace style (off by default)
			"allowSingleLine": true
		}],
		"camelcase": ["error", {                 // require camel case names
			"properties": "never"
		}],
		"comma-spacing": ["error", {             // enforce spacing before and after comma
			"before": false,
			"after": true
		}],
		"comma-style": ["error", "last"],                 // enforce one true comma style (off by default)
		"computed-property-spacing": ["error", "never"],  // enforces consistent spacing inside computer property brackets: var a = obj[ x ]
		"consistent-this": ["error", "self"],             // enforces consistent naming when capturing the current execution context (off by default)
		"eol-last": "off",                                // enforce newline at the end of file, with no multiple empty lines
		"func-names": "off",                              // require function expressions to have a name (off by default)
		"func-style": ["error", "declaration", {          // enforces use of function declarations or expressions (off by default)
			"allowArrowFunctions": true
		}],
		"id-blacklist": "off",          // disallow specified identifiers
		"id-length": "off",             // enforces minimum and maximum identifier lengths
		"id-match": "off",              // enforces identifiers to match a specified regular expression
		"indent": ["warn", "tab", {         // enforces consistent indentation
			"SwitchCase": 1
		}],
		"jsx-quotes": ["error", "prefer-double"],   // enforce the consistent use of either double or single quotes in JSX attributes
		"key-spacing": ["warn", {               // enforces spacing between keys and values in object literal properties
			"beforeColon": false,
			"afterColon": true
		}],
		"keyword-spacing": ["error", {              // enforce consistent spacing before and after keywords
			"overrides": {
				"if": {
					"before": true,
					"after": true
				},
				"for": {
					"before": true,
					"after": true
				},
				"while": {
					"before": true,
					"after": true
				}
			}
		}],
		"linebreak-style": "off",       // enforces consistent linebreak style
		"lines-around-comment": ["warn", {
			"beforeBlockComment": true,
			"afterBlockComment": false,
			"beforeLineComment": true,
			"afterLineComment": false,
			"allowBlockStart": false,
			"allowBlockEnd": false,
			"allowObjectStart": false,
			"allowObjectEnd": false,
			"allowArrayStart": false,
			"allowArrayEnd": false
		}],
		"max-depth": ["warn", 10],     // enforce a maximum depth that blocks can be nested
		"max-len": ["error", {
			"code": 120,
			"tabWidth": 2,
			"ignoreComments": false,
			"ignoreTrailingComments": false,
			"ignoreUrls": true
		}],
		"max-nested-callbacks": "off",      // specify the maximum depth callbacks can be nested (off by default)
		"max-params": "off",            // enformce a maximun number of parameters in function definitions
		"max-statements": "off",        // enforce a maximun number of statements allowed in function blocks
		"max-statements-per-line": "off", // enforce a maximun number of statements allowed per line
		"new-cap": "error",                   // require a capital letter for constructors
		"new-parens": "error",                // disallow the omission of parentheses when invoking a constructor with no arguments
		"newline-after-var": ["warn", "always"],    // require or disallow an empty line after var declarations
		"newline-before-return": "off",             // require an empty line before return statements
		"newline-per-chained-all": "off",           // require a new line bafter each call in a method chain
		"no-array-constructor": "error",            // disallow use of the Array constructor
		"no-bitwise": "off",                        // disallow bitwise operators
		"no-continue": "error",                     // disallow continue statements
		"no-inline-comments": "error",        // disallow comments inline after code (off by default)
		"no-lonely-if": "error",              // disallow if as the only statement in an else block (off by default)
		"no-mixed-spaces-and-tabs": "error",  // disallow mixed spaces and tabs for indentation
		"no-multiple-empty-lines": ["error", {      // disallow multiple empty lines (off by default)
			"max": 1
		}],
		"no-negated-condition": "off",              // disallow negated conditions: if (!a) { ... }
		"no-nested-ternary": "off",         // disallow nested ternary expressions (off by default)
		"no-new-object": "error",             // disallow use of the Object constructor
		"no-plusplus": "off",                       // disallow the unary operators ++ and --
		"no-restricted-syntax": "off",              // disallow specified syntax https://github.com/eslint/espree/blob/master/lib/ast-node-types.js
		"no-spaced-func": "error",            // disallow space between function identifier and application
		"no-ternary": "off",                // disallow the use of ternary operators (off by default)
		"no-trailing-spaces": "warn",        // disallow trailing whitespace at the end of lines
		"no-underscore-dangle": "off",      // disallow dangling underscores in identifiers
		"no-unneeded-ternary": "error",             // disallow ternary operator when simpler alternatives exists
		"no-whitespace-before-property": "error",   // disallow whitespaces before properties: obj. bar
		"object-curly-spacing": ["error", "never"], // enforce consistent spacing inside braces
		"one-var": ["warn", {                       // enforce variables to be declared either together or separetely in functions
			"uninitialized": "always",
			"initialized": "never"
		}],
		"one-var-declaration-per-line": "off",      // require or disallow newlines around var declarations
		"operator-assignment": ["error", "always"],       // require assignment operator shorthand where possible or prohibit it entirely (off by default)
		"operator-linebreak": ["error", "after"],         // enforce consistent linebreak style for operators
		"padded-blocks": "off",             // enforce padding within blocks (off by default)
		"quote-props": ["error", "consistent-as-needed", {               // require quotes around object literal property names (off by default)
			"keywords": true
		}],
		"quotes": ["error", "single", {                    // specify whether double or single quotes should be used
			"allowTemplateLiterals": true
		}],
		"require-jsdoc": ["error", {
			"require": {
				"FunctionDeclaration": true,
				"MethodDefinition": true,
				"ClassDeclaration": false
			}
		}],
		"semi": ["warn", "always"],                      // require or disallow use of semicolons instead of ASI
		"semi-spacing": ["error", {                       // enforce consistent spacing beefore and after semicolons
			"before": false,
			"after": true
		}],
		"sort-imports": "off",          // enforce sorted import declaration within module
		"sort-vars": "off",                 // sort variables within the same declaration block (off by default)
		"space-before-blocks": ["error", "always"],       // require or disallow space before blocks (off by default)
		"space-before-function-paren": ["error", "never"],    // enforce consistent spacing before function definition opening parenthesis
		"space-in-parens": ["error", "never"],           // require or disallow spaces inside parentheses (off by default)
		"space-infix-ops": "warn",           // require spaces around operators
		"space-unary-ops": ["error", {           // require or disallow spaces before/after unary operators (words on by default, nonwords off by default)
			"words": true,
			"nonwords": false
		}],
		"spaced-comment": ["error", "always", {
			"line": {
				"exceptions": ["/-", "-"],
				"markers": ["/"]
			}
		}],
		//    "spaced-comment": ["error", "always", {       // require or disallow a space immediately following the // in a line comment (off by default)
		//      "line": {
		//        "exceptions": ["-"]
		//      }
		//      "block": {
		//        "exceptions": ["-", "+", "*"]
		//      }
		//    }],
		"wrap-regex": "error",                // require regex literals to be wrapped in parentheses (off by default)

		//-----------------------
		// ECMAScript 6
		//-----------------------

		"arrow-body-style": ["warn", "as-needed"],   // require braces around arrow function bodies:
		"arrow-parens": ["warn", "as-needed"],         // require parentheses around arrow function arguments
		"constructor-super": "error",                 // require super() calls in constructors
		"generator-star-spacing": ["error", {         // enforce consistent spacing around * operators in generator functions
			"before": false,
			"after": true
		}],
		"no-class-assign": "error",                   // disallow reassigning class members
		"no-confusing-arrow": "off",                  // disallow arrow functions where they could be confused with comparisons
		"no-const-assign": "error",                   // disallow reassigning const variables
		"no-dupe-class-members": "error",             // disallow duplicate class members
		"no-duplicate-imports": "error",              // disallow duplicate module imports
		"no-new-symbol": "error",                     // disallow new operators with the Symbol object
		"no-restricted-imports": "off",               // disallow specified modules when loaded by import
		"no-this-before-super": "error",              // disallow this/super before claling super() in constructors
		"no-useless-constructor": "error",            // disallow unnecessary constructors
		"no-var": "error",                            // require let or const instead of var (off by default)
		"object-shorthand": "off",                    // require or disallow methd and property shorthand syntax for object literals
		"prefer-arrow-callback": ["warn", {           // require arrow functions as callbacks
			"allowNamedFunctions": true
		}],
		"prefer-const": ["off", {                   // require const declarations of variables that are never reassigned after declared
			"destructuring": "all"
		}],
		"prefer-reflect": "error",                    // require Reflect methods where applicable (delete, apply, call, defineProperty...)
		"prefer-rest-params": "error",                // require rest parameters instead of arguments
		"prefer-template": "error",                   // require template literals instead of string concatenation
		"require-yield": "error",                     // require generator functions to contain yield
		"template-curly-spacing": ["error", "never"], // require or disallow spacing around embedded expressios of template strings
		"yield-star-spacing": ["error", {             // require or disallow spacing around the * in yield* expressions
			"before": false,
			"after": true
		}],

		//-----------------------
		// JSX Rules
		//-----------------------

		"display-name": 0,							// prevent missing displayName in a React component definition
		"forbid-prop-types": 0,					// forbid certain propTypes
		"no-danger": 0,									// prevent usage of dangerous JSX properties
		"no-deprecated": 0,							// prevent usage of deprecated methods
		"no-did-mount-set-state": 0,		// prevent usage of setState in componentDidMount
		"no-did-update-set-state": 0,		// prevent usage of setStte in componentDidUpdate
		"no-direct-mutation-state": 0,	// prevent direct mutation of this.state
		"no-is-mounted": 0,							// prevent usage of isMounted
		"no-multi-comp": 0,							// prevent multiple component definition per file
		"no-set-state": 0,							// prevent usage of setState
		"no-string-refs": 0,						// prevent using string references in ref attribute
		"no-unknown-property": 0,				// prevent usage of unknown DOM property (fixable)
		"prefer-es6-class": 0,					// enforce ES5 or ES6 class for React componentes
		"prefer-stateless-function": 0,	// enforce stateless React componentes to be written as a pure function
		"prop-types": 0,								// prevent missing props validation in a React component definition
		"react-in-jsx-scope": 0,				// prevent missing React when using JSX
		"react-extension": 0,						// restrict file extensions that may be required
		"require-render-return": 0,			// enforce ES5 or ES6 class for returning value in render function
		"self-closing-comp": 0,					// prevent extra closing tags for componentes without children
		"sort-comp": 0,									// enforce component methods order
		"sort-prop-types": 0,						// enforce propTypes declarations alphabetical sorting
		"wrap-multilines": 0,						// prevent missing parentheses around multilines JSX (fixable)

		// JSX-specific rules

		"react/jsx-boolean-value": 0,							// enforce boolean attributes notation in JSX (fixable)
		"react/jsx-closing-bracket-location": 0,	// validate closing bracket location in JSX (fixable)
		"react/jsx-curly-spacing": 0,							// enforce or disallow spaces inside of curly braces in JSX attributes (fixable)
		"react/jsx-equals-spacing": 0,						// enforce or disallow spaces around equals signs in JSX attributes (fixable)
		"react/jsx-first-prop-new-line": 0,				// enforce position of the first prop in JSX
		"react/jsx-handler-names": 0,							// enforce event handler naming conventions in JSX
		"react/jsx-indent-props": 0,							// validate props indentation in JSX (fixable)
		"react/jsx-indent": 0,										// validate JSX indentation
		"react/jsx-key": 0,												// validate JSX has key prop when in array or iterator
		"react/jsx-max-props-per-line": 0,				// limit maximum of props on a single line in JSX
		"react/jsx-no-bind": 0,										// prevent usage of .bind() and arrow functions in JSX props
		"react/jsx-no-duplicate-props": 0,				// prevent duplicate props in JSX
		"react/jsx-no-literals": 0,								// prevent usage of unwrapped JSX strings
		"react/jsx-no-undef": 0,									// disallow undeclared variables in JSX
		"react/jsx-pascal-case": 0,								// enforce PascalCase for user-defined JSX components
		"react/jsx-sort-props": 0,								// enforce props alphabetical sorting
		"react/jsx-space-before-closing": 0,			// validate spacing before closingbracket in JSX (fixable)
		"react/jsx-uses-react": "error",					// prevent React to be incorrectly marked as unused
		"react/jsx-uses-vars": "error"						// prevent variables used in JSX to be incorrectly marked as unused

	}
};
