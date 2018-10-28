# Bugs found while testing

## RESTful API compliance
- DELETE operation returns 200 instead of 204
- POST operation returns 200 instead of 201
- /Product endpoint doesn't follow REST's collection-resource design principles. Should be /Products similar to GET operation.

## Swagger documentation
- The `product_code` in the response doesn't match up to the actual API which instead returns `id`.
- The data type for the `price` field on the `POST` call to `/product` is `undefined` (use `number` instead of `float`)

## Linting issues
_question_ What development standards are being used? Currently the code base has the following errors

### Flake8 errors
```
controller/models.py:5:1: E302 expected 2 blank lines, found 1
controller/models.py:12:5: E101 indentation contains mixed spaces and tabs
controller/models.py:12:5: W191 indentation contains tabs
controller/models.py:12:14: W291 trailing whitespace
controller/models.py:13:5: E101 indentation contains mixed spaces and tabs
controller/models.py:13:5: W191 indentation contains tabs
controller/models.py:13:11: E203 whitespace before ':'
controller/models.py:14:5: E101 indentation contains mixed spaces and tabs
controller/models.py:14:5: W191 indentation contains tabs
controller/models.py:14:13: E203 whitespace before ':'
controller/models.py:15:5: E101 indentation contains mixed spaces and tabs
controller/models.py:15:5: W191 indentation contains tabs
controller/models.py:15:14: E203 whitespace before ':'
controller/models.py:15:36: W291 trailing whitespace
controller/models.py:16:5: E101 indentation contains mixed spaces and tabs
controller/models.py:16:5: W191 indentation contains tabs
controller/products.py:3:11: E401 multiple imports on one line
controller/products.py:3:11: E231 missing whitespace after ','
controller/products.py:6:1: E402 module level import not at top of file
controller/products.py:8:1: E302 expected 2 blank lines, found 1
controller/products.py:9:1: W191 indentation contains tabs
controller/products.py:9:10: E201 whitespace after '['
controller/products.py:9:51: E202 whitespace before ']'
controller/products.py:11:1: E302 expected 2 blank lines, found 1
controller/products.py:12:1: W191 indentation contains tabs
controller/products.py:13:1: W191 indentation contains tabs
controller/products.py:15:1: W191 indentation contains tabs
controller/products.py:15:29: E231 missing whitespace after ','
controller/products.py:16:1: W191 indentation contains tabs
controller/products.py:17:1: W191 indentation contains tabs
controller/products.py:19:1: E302 expected 2 blank lines, found 1
controller/products.py:20:1: W191 indentation contains tabs
controller/products.py:21:1: W191 indentation contains tabs
controller/products.py:23:1: E302 expected 2 blank lines, found 1
controller/products.py:24:1: W191 indentation contains tabs
controller/products.py:26:1: W191 indentation contains tabs
controller/products.py:27:1: W191 indentation contains tabs
controller/products.py:28:1: W191 indentation contains tabs
controller/products.py:29:1: W191 indentation contains tabs
controller/products.py:31:1: W191 indentation contains tabs
controller/products.py:33:1: E302 expected 2 blank lines, found 1
controller/products.py:34:1: W191 indentation contains tabs
controller/products.py:35:1: W191 indentation contains tabs
controller/products.py:36:1: W191 indentation contains tabs
app.py:7:1: W191 indentation contains tabs
app.py:7:3: E101 indentation contains mixed spaces and tabs
app.py:7:5: E128 continuation line under-indented for visual indent
app.py:8:1: W191 indentation contains tabs
app.py:8:3: E101 indentation contains mixed spaces and tabs
app.py:8:5: E128 continuation line under-indented for visual indent
app.py:9:1: W191 indentation contains tabs
app.py:9:3: E101 indentation contains mixed spaces and tabs
app.py:9:5: E128 continuation line under-indented for visual indent
app.py:10:1: W191 indentation contains tabs
app.py:10:3: E101 indentation contains mixed spaces and tabs
app.py:10:5: E128 continuation line under-indented for visual indent
app.py:11:1: W191 indentation contains tabs
app.py:11:3: E101 indentation contains mixed spaces and tabs
app.py:11:5: E128 continuation line under-indented for visual indent
app.py:11:38: E231 missing whitespace after ','
app.py:12:1: W191 indentation contains tabs
app.py:13:1: W191 indentation contains tabs
app.py:14:1: W191 indentation contains tabs
app.py:14:2: E101 indentation contains mixed spaces and tabs
app.py:15:1: W191 indentation contains tabs
app.py:15:2: E101 indentation contains mixed spaces and tabs
app.py:16:1: W191 indentation contains tabs
app.py:16:54: E231 missing whitespace after ','
app.py:18:59: E231 missing whitespace after ','
app.py:25:1: W191 indentation contains tabs
app.py:26:1: W391 blank line at end of file
db_create.py:2:1: F401 'os' imported but unused
db_create.py:7:1: W191 indentation contains tabs
db_create.py:9:1: W191 indentation contains tabs
db_create.py:10:1: W191 indentation contains tabs
db_create.py:11:1: W191 indentation contains tabs
db_create.py:13:1: W191 indentation contains tabs
db_create.py:14:1: W191 indentation contains tabs
db_create.py:15:1: W191 indentation contains tabs
db_create.py:16:1: W191 indentation contains tabs
db_create.py:16:21: W292 no newline at end of file
```

### Pylint
```
************* Module controller.models
C: 12, 0: Trailing whitespace (trailing-whitespace)
W: 12, 0: Found indentation with tabs instead of spaces (mixed-indentation)
C: 13, 0: Wrong hanging indentation (add 10 spaces).
    		'id' : self.id,
      ^         | (bad-continuation)
C: 14, 0: Wrong hanging indentation (add 10 spaces).
    		'name' : self.name,
      ^         | (bad-continuation)
C: 15, 0: Wrong hanging indentation (add 10 spaces).
    		'price' : '%.2f' % self.price
      ^         | (bad-continuation)
C: 15, 0: Trailing whitespace (trailing-whitespace)
C: 16, 0: Wrong hanging indentation.
    	}
     ^      |   | (bad-continuation)
C:  1, 0: Missing module docstring (missing-docstring)
C:  3, 0: Constant name "db" doesn't conform to UPPER_CASE naming style (invalid-name)
C:  5, 0: Missing class docstring (missing-docstring)
E:  6, 9: Instance of 'SQLAlchemy' has no 'Column' member (no-member)
E:  6,19: Instance of 'SQLAlchemy' has no 'Integer' member (no-member)
E:  7,11: Instance of 'SQLAlchemy' has no 'Column' member (no-member)
E:  7,21: Instance of 'SQLAlchemy' has no 'String' member (no-member)
E:  8,12: Instance of 'SQLAlchemy' has no 'Column' member (no-member)
E:  8,22: Instance of 'SQLAlchemy' has no 'Float' member (no-member)
C: 11, 4: Missing method docstring (missing-docstring)
R:  5, 0: Too few public methods (1/2) (too-few-public-methods)
************* Module controller.products
C:  3, 0: Exactly one space required after comma
import sys,os
          ^ (bad-whitespace)
W:  9, 0: Found indentation with tabs instead of spaces (mixed-indentation)
C:  9, 0: No space allowed after bracket
	return [ p.serialize for p in Product.query.all() ]
        ^ (bad-whitespace)
C:  9, 0: No space allowed before bracket
	return [ p.serialize for p in Product.query.all() ]
                                                   ^ (bad-whitespace)
W: 12, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 13, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 15, 0: Found indentation with tabs instead of spaces (mixed-indentation)
C: 15, 0: Exactly one space required after comma
	product = Product(name=name,price=price)
                            ^ (bad-whitespace)
W: 16, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 17, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 20, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 21, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 24, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 26, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 27, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 28, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 29, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 31, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 34, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 35, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 36, 0: Found indentation with tabs instead of spaces (mixed-indentation)
C:  1, 0: Missing module docstring (missing-docstring)
C:  3, 0: Multiple imports on one line (sys, os) (multiple-imports)
C:  6, 0: Import "from models import Product, db" should be placed at the top of the module (wrong-import-position)
W:  6, 0: Relative import 'models', should be 'controller.models' (relative-import)
C:  8, 0: Missing function docstring (missing-docstring)
C: 11, 0: Missing function docstring (missing-docstring)
E: 16, 1: Instance of 'scoped_session' has no 'add' member (no-member)
E: 17, 1: Instance of 'scoped_session' has no 'commit' member (no-member)
C: 19, 0: Missing function docstring (missing-docstring)
C: 23, 0: Missing function docstring (missing-docstring)
E: 31, 1: Instance of 'scoped_session' has no 'commit' member (no-member)
C: 33, 0: Missing function docstring (missing-docstring)
E: 35, 1: Instance of 'scoped_session' has no 'delete' member (no-member)
E: 36, 1: Instance of 'scoped_session' has no 'commit' member (no-member)
C:  3, 0: standard import "import sys, os" should be placed before "from flask import request" (wrong-import-order)
C:  3, 0: standard import "import sys, os" should be placed before "from flask import request" (wrong-import-order)
************* Module app
C:  7, 0: Wrong continued indentation (add 6 spaces).
		  'connexion.decorators.response',
    ^     | (bad-continuation)
C:  8, 0: Wrong continued indentation (add 6 spaces).
		  'connexion.api.security',
    ^     | (bad-continuation)
C:  9, 0: Wrong continued indentation (add 6 spaces).
		  'connexion.decorators.produces',
    ^     | (bad-continuation)
C: 10, 0: Wrong continued indentation (add 6 spaces).
		  'connexion.resolver',
    ^     | (bad-continuation)
C: 11, 0: Wrong continued indentation (add 6 spaces).
		  'connexion.decorators.validation','connexion.app']:
    ^     | (bad-continuation)
C: 11, 0: Exactly one space required after comma
		  'connexion.decorators.validation','connexion.app']:
                                     ^ (bad-whitespace)
W: 12, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 13, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 14, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 15, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 16, 0: Found indentation with tabs instead of spaces (mixed-indentation)
C: 16, 0: Exactly one space required after comma
	logging.basicConfig(format='%(asctime)s %(message)s',level=logging.DEBUG)
                                                     ^ (bad-whitespace)
C: 18, 0: Exactly one space required after comma
app = connexion.App(__name__, specification_dir='swagger/',debug=True)
                                                          ^ (bad-whitespace)
W: 25, 0: Found indentation with tabs instead of spaces (mixed-indentation)
C: 26, 0: Trailing newlines (trailing-newlines)
C:  1, 0: Missing module docstring (missing-docstring)
C: 18, 0: Constant name "app" doesn't conform to UPPER_CASE naming style (invalid-name)
C:  5, 0: standard import "import logging" should be placed before "import connexion" (wrong-import-order)
************* Module db_create
W:  7, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W:  9, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 10, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 11, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 13, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 14, 0: Found indentation with tabs instead of spaces (mixed-indentation)
W: 15, 0: Found indentation with tabs instead of spaces (mixed-indentation)
C: 16, 0: Final newline missing (missing-final-newline)
W: 16, 0: Found indentation with tabs instead of spaces (mixed-indentation)
C:  1, 0: Missing module docstring (missing-docstring)
C:  9, 1: Constant name "p1" doesn't conform to UPPER_CASE naming style (invalid-name)
C: 10, 1: Constant name "p2" doesn't conform to UPPER_CASE naming style (invalid-name)
C: 11, 1: Constant name "p3" doesn't conform to UPPER_CASE naming style (invalid-name)
E: 13, 1: Instance of 'scoped_session' has no 'add' member (no-member)
E: 14, 1: Instance of 'scoped_session' has no 'add' member (no-member)
E: 15, 1: Instance of 'scoped_session' has no 'add' member (no-member)
E: 16, 1: Instance of 'scoped_session' has no 'commit' member (no-member)
W:  2, 0: Unused import os (unused-import)

-------------------------------------
Your code has been rated at -14.75/10
```

## Error Messages
When the server returns a 400 Bad Request response the error message says `The browser (or proxy) sent a request that this server could not understand`.

This error message isn't useful as it doesn't state what may have caused the request to be bad.

### Dependency security
There are a number of out of date dependencies including one called `marshmallow` which Github's security alert flagged as High Severity. Using tools like PyUp.io
would catch these and prevent pull requests being merged in until these were resolved.
