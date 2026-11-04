X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/04/1
Message-Id: <F28E5CED-2277-4A98-991B-BDA17A19BDC9@stig.io>
Date: Wed, 4 Nov 2026 01:07:47 +0100
From: Stig Palmquist <stig@...g.io>
To: oss-security@...ts.openwall.com
Subject: CGI versions before 5.00 for Perl (20 CVEs)
Content-Type: text/plain; charset=utf-8

CVE-2026-120631
  CGI::Cookie versions from 4.67 before 5.00 for Perl allow denial of
  service via the client cookie expires value used as a regex in parse

CVE-2026-120632
  CGI versions before 5.00 for Perl allow CPU exhaustion via a
  backtracking regex on the XForms multipart/related Content-Type

CVE-2026-120633
  CGI versions before 5.00 for Perl trust the client X-Forwarded-Host
  header in url, self_url, virtual_host and virtual_port

CVE-2026-120634
  CGI::Carp versions before 5.00 for Perl leak warnings across requests
  in persistent environments via the warningsToBrowser buffer

CVE-2026-120635
  CGI versions before 5.00 for Perl allow form fields to be smuggled
  past proxies and WAFs via multipart parsing that differs from the
  RFCs

CVE-2026-120636
  CGI versions before 5.00 for Perl allow open redirects and script
  injection via URLs built from REQUEST_URI in url and start_form

CVE-2026-120637
  CGI versions before 5.00 for Perl take request parameters from the
  process command line arguments for an unrecognised REQUEST_METHOD

CVE-2026-120638
  CGI versions before 5.00 for Perl allow open redirects via HTML
  entity decoding of the URL after application validation in redirect

CVE-2026-120639
  CGI versions before 5.00 for Perl allow HTTP header injection via
  entity decoding after the newline check in header and unchecked
  values in multipart_start and do_push

CVE-2026-120640
  CGI versions before 5.00 for Perl allow the POSTDATA, PUTDATA,
  PATCHDATA and XForms:Model parameters to be set from the query string
  or form fields

CVE-2026-120641
  CGI versions before 5.00 for Perl return upload filenames with any
  client-supplied path, including ../ and Windows paths

CVE-2026-120642
  CGI versions before 5.00 for Perl return request-derived values
  untainted under taint mode

CVE-2026-120643
  CGI versions from 4.62 before 5.00 for Perl allow cross-site
  scripting via a raw apostrophe in URLs returned by url and self_url

CVE-2026-120644
  CGI::Cookie versions before 5.00 for Perl allow cookie attribute
  injection via unvalidated path, domain and expires values

CVE-2026-120645
  CGI versions before 5.00 for Perl allow denial of service via
  submitted values used as a regex for optgroup selection in
  scrolling_list

CVE-2026-120646
  CGI versions from 4.71 before 5.00 for Perl allow denial of service
  via a plain string dereferenced as a symbolic reference in uploadInfo

CVE-2026-120647
  CGI versions before 5.00 for Perl allow Content-Disposition parameter
  injection via unescaped double quotes in the header attachment
  filename

CVE-2026-120648
  CGI versions before 5.00 for Perl allow HTML injection via text
  containing --> in comment

CVE-2026-120650
  CGI versions before 5.00 for Perl allow memory, CPU and disk
  exhaustion via missing or unenforced request size, parameter and
  upload limits

CVE-2026-120651
  CGI versions before 5.00 for Perl allow an infinite loop on a short
  request body when $DISABLE_UPLOADS is set


========================================================================
CVE-2026-120631                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120631

  Distribution:  CGI
      Versions:  from 4.67 before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI::Cookie versions from 4.67 before 5.00 for Perl allow denial of
service via the client cookie expires value used as a regex in parse

Description
-----------
CGI::Cookie versions from 4.67 before 5.00 for Perl allow denial of
service via the client cookie expires value used as a regex in parse.

CGI's cookie method reads the Cookie request header through parse,
which interpolates the header's expires value unescaped into the
substitution pattern that removes it from the cookie string.

A client can make the request die with an invalid pattern, or tie up
the process with one that backtracks catastrophically.

Problem types
-------------
- CWE-1333 Inefficient Regular Expression Complexity
- CWE-625 Permissive Regular Expression

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI/Cookie.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/95e044af2ec24d99a61e99d6291580ad47aff641.patch


========================================================================
CVE-2026-120632                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120632

  Distribution:  CGI
      Versions:  before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI versions before 5.00 for Perl allow CPU exhaustion via a
backtracking regex on the XForms multipart/related Content-Type

Description
-----------
CGI versions before 5.00 for Perl allow CPU exhaustion via a
backtracking regex on the XForms multipart/related Content-Type.

When a POST Content-Type contains multipart/related, the boundary and
start parameters are extracted with an unanchored pattern that puts .+
on either side of the boundary capture, which backtracks in cubic time
on a header that does not match. No request body is needed.

Problem types
-------------
- CWE-1333 Inefficient Regular Expression Complexity

Workarounds
-----------
For deployments that cannot upgrade, reject Content-Type request
headers longer than 1KB at the web server.

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/1e529c7ac8d410a51b4b04ab9d6cc00d51ef33c0.patch


========================================================================
CVE-2026-120633                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120633

  Distribution:  CGI
      Versions:  before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI versions before 5.00 for Perl trust the client X-Forwarded-Host
header in url, self_url, virtual_host and virtual_port

Description
-----------
CGI versions before 5.00 for Perl trust the client X-Forwarded-Host
header in url, self_url, virtual_host and virtual_port.

These take the host name and port from the X-Forwarded-Host request
header when present, and otherwise from Host, without validating
either. The URLs from url and self_url are the default redirect
location and the start_html(-base=>1) base href, and the default
start_form action when REQUEST_URI is not set.

A client can poison shared caches, and URLs the application stores or
sends, with redirects, links and scripts that point at a host it
controls.

Problem types
-------------
- CWE-348 Use of Less Trusted Source
- CWE-601 URL Redirection to Untrusted Site ('Open Redirect')

Workarounds
-----------
For deployments that cannot upgrade, strip X-Forwarded-Host at the web
server or proxy unless it sets the header itself, and validate Host.

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/d76752a5e8dfd365b0fe3a0b9a7da6c054e856af.patch


========================================================================
CVE-2026-120634                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120634

  Distribution:  CGI
      Versions:  before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI::Carp versions before 5.00 for Perl leak warnings across requests
in persistent environments via the warningsToBrowser buffer

Description
-----------
CGI::Carp versions before 5.00 for Perl leak warnings across requests
in persistent environments via the warningsToBrowser buffer.

Warnings are held in a package-level buffer until warningsToBrowser
writes them into the page as HTML comments, and the buffer is never
cleared between requests. Under mod_perl, FastCGI or PSGI, warnings
from one request are written into a later one.

Warnings that contain one user's request data can appear in the HTML
sent to another user.

Problem types
-------------
- CWE-488 Exposure of Data Element to Wrong Session

Workarounds
-----------
For deployments that cannot upgrade, do not use warningsToBrowser in
persistent environments. After upgrading, persistent applications where
nothing calls CGI::initialize_globals between requests must also call
CGI::Carp::_reset_globals at the start of each request.

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI/Carp.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/604a83fec105f75fe06f1a75026c4c34fd5a1f61.patch


========================================================================
CVE-2026-120635                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120635

  Distribution:  CGI
      Versions:  before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI versions before 5.00 for Perl allow form fields to be smuggled past
proxies and WAFs via multipart parsing that differs from the RFCs

Description
-----------
CGI versions before 5.00 for Perl allow form fields to be smuggled past
proxies and WAFs via multipart parsing that differs from the RFCs.

The multipart/form-data parser matches the boundary anywhere rather
than at the start of a line, uses the boundary without its leading --
for some client-supplied User-Agent values, finds the
Content-Disposition name and filename inside the quoted values of other
parameters, and corrupts parts when the boundary nears the 4096-byte
read size.

Problem types
-------------
- CWE-436 Interpretation Conflict

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://www.rfc-editor.org/rfc/rfc2046#section-5.1.1
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/f719fc08e8756708bcd4f1e357d5c0f8702f85dd.patch
https://github.com/leejo/CGI.pm/commit/cbf04979f9974458ac223793bbd9d0b6a772aa66.patch
https://github.com/leejo/CGI.pm/commit/fe9516804d59a3774e280c15dbb7072fbd0ba5f1.patch
https://github.com/leejo/CGI.pm/commit/e0ef8f4248c6ae3025749040d8595d206b6a1b49.patch


========================================================================
CVE-2026-120636                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120636

  Distribution:  CGI
      Versions:  before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI versions before 5.00 for Perl allow open redirects and script
injection via URLs built from REQUEST_URI in url and start_form

Description
-----------
CGI versions before 5.00 for Perl allow open redirects and script
injection via URLs built from REQUEST_URI in url and start_form.

url(-absolute=>1), url(-relative=>1) and the default start_form action
are built from the client-supplied REQUEST_URI without validation. The
result can be protocol-relative (//evil.example), absolute-form
(http://evil.example/) or contain backslashes, and url(-relative=>1)
can return a javascript: URL. Links and form posts built from these
URLs can go to another host.

Problem types
-------------
- CWE-601 URL Redirection to Untrusted Site ('Open Redirect')
- CWE-79 Improper Neutralization of Input During Web Page Generation
  ('Cross-site Scripting')

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/9405ef3909ee94991a3474167aa53b9051bd8765.patch


========================================================================
CVE-2026-120637                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120637

  Distribution:  CGI
      Versions:  before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI versions before 5.00 for Perl take request parameters from the
process command line arguments for an unrecognised REQUEST_METHOD

Description
-----------
CGI versions before 5.00 for Perl take request parameters from the
process command line arguments for an unrecognised REQUEST_METHOD.

For a REQUEST_METHOD such as OPTIONS, CGI falls through to its offline
debugging mode, which is on by default, and builds the parameters and
path_info from the process's command line arguments.

Problem types
-------------
- CWE-489 Active Debug Code

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/b753ff75a3bc4554c075cc37c1db605a55297029.patch


========================================================================
CVE-2026-120638                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120638

  Distribution:  CGI
      Versions:  before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI versions before 5.00 for Perl allow open redirects via HTML entity
decoding of the URL after application validation in redirect

Description
-----------
CGI versions before 5.00 for Perl allow open redirects via HTML entity
decoding of the URL after application validation in redirect.

redirect decodes HTML entities in its URL before writing the Location
header, so a URL the application has already validated can change
meaning. For example, /&#47;evil.example/ becomes //evil.example/ and
sends the user to another host.

Problem types
-------------
- CWE-180 Incorrect Behavior Order: Validate Before Canonicalize
- CWE-601 URL Redirection to Untrusted Site ('Open Redirect')

Workarounds
-----------
For deployments that cannot upgrade, reject redirect URLs that HTML
entity decoding would change.

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/7733c2753f4f240012097507cda2b6e87ae46db4.patch


========================================================================
CVE-2026-120639                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120639

  Distribution:  CGI
      Versions:  before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI versions before 5.00 for Perl allow HTTP header injection via
entity decoding after the newline check in header and unchecked values
in multipart_start and do_push

Description
-----------
CGI versions before 5.00 for Perl allow HTTP header injection via
entity decoding after the newline check in header and unchecked values
in multipart_start and do_push.

With autoEscape off, header decodes HTML entities in extra header
values after its newline check, so an encoded CR or LF reaches the
response. multipart_start does not check header values for newlines,
and do_push does not check the type it prints in each part.

An application that passes request data into these header values can be
made to add headers or split the response.

Problem types
-------------
- CWE-113 Improper Neutralization of CRLF Sequences in HTTP Headers
  ('HTTP Request/Response Splitting')

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/69955309d371c8093d11cf12e3ddef491537ffad.patch
https://github.com/leejo/CGI.pm/commit/7733c2753f4f240012097507cda2b6e87ae46db4.patch


========================================================================
CVE-2026-120640                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120640

  Distribution:  CGI
      Versions:  before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI versions before 5.00 for Perl allow the POSTDATA, PUTDATA,
PATCHDATA and XForms:Model parameters to be set from the query string
or form fields

Description
-----------
CGI versions before 5.00 for Perl allow the POSTDATA, PUTDATA,
PATCHDATA and XForms:Model parameters to be set from the query string
or form fields.

CGI stores a non-form request body under POSTDATA, PUTDATA or
PATCHDATA, and an XForms body under XForms:Model, but also accepts
these names from the query string, a form field or a multipart part, so
an application cannot tell a client-sent value from the real body.

A cross-site HTML form can post POSTDATA={"admin":true} to an endpoint
that reads JSON from param('POSTDATA'), a request forgery that needs no
CORS preflight.

Problem types
-------------
- CWE-352 Cross-Site Request Forgery (CSRF)

Workarounds
-----------
For deployments that cannot upgrade, check the request Content-Type
before trusting param('POSTDATA').

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/bc4022f553301014e522133ba1e1f4e49e3bef08.patch


========================================================================
CVE-2026-120641                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120641

  Distribution:  CGI
      Versions:  before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI versions before 5.00 for Perl return upload filenames with any
client-supplied path, including ../ and Windows paths

Description
-----------
CGI versions before 5.00 for Perl return upload filenames with any
client-supplied path, including ../ and Windows paths.

The name returned for an uploaded file is the filename parameter of the
part's Content-Disposition header, unchanged.

An application that saves the upload under this name can be made to
write outside the intended directory.

Problem types
-------------
- CWE-22 Improper Limitation of a Pathname to a Restricted Directory
  ('Path Traversal')

Workarounds
-----------
For deployments that cannot upgrade, do not use the client-supplied
upload filename as a path.

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/5379eb18e87b7f985613f5c4f7bae94478a4fa2f.patch


========================================================================
CVE-2026-120642                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120642

  Distribution:  CGI
      Versions:  before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI versions before 5.00 for Perl return request-derived values
untainted under taint mode

Description
-----------
CGI versions before 5.00 for Perl return request-derived values
untainted under taint mode.

The upload filename, uploadInfo values, some path_info and script_name
values, Accept results, and the name lists from url_param and cookie
are returned without the taint flag, as is a cookie named expires from
4.67 on.

These values come from regex captures or hash keys, which Perl does not
taint, so they pass -T checks unvalidated.

Problem types
-------------
- CWE-1173 Improper Use of Validation Framework

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/6ae50ce84073b8f68a6e3750479de70d5b8f2dcf.patch


========================================================================
CVE-2026-120643                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120643

  Distribution:  CGI
      Versions:  from 4.62 before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI versions from 4.62 before 5.00 for Perl allow cross-site scripting
via a raw apostrophe in URLs returned by url and self_url

Description
-----------
CGI versions from 4.62 before 5.00 for Perl allow cross-site scripting
via a raw apostrophe in URLs returned by url and self_url.

Both pass the URL through URI's canonical method, which leaves an
apostrophe in the path raw and decodes the %27 that query parameter
escaping produces, so an apostrophe in the request path or a parameter
appears raw in the result.

An application that places the URL in a single-quoted HTML attribute or
JavaScript string is open to cross-site scripting.

Problem types
-------------
- CWE-79 Improper Neutralization of Input During Web Page Generation
  ('Cross-site Scripting')

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/851430be84c4d0f350681814e1d7718b9959f2c2.patch


========================================================================
CVE-2026-120644                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120644

  Distribution:  CGI
      Versions:  before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI::Cookie versions before 5.00 for Perl allow cookie attribute
injection via unvalidated path, domain and expires values

Description
-----------
CGI::Cookie versions before 5.00 for Perl allow cookie attribute
injection via unvalidated path, domain and expires values.

The path, domain and expires values are written into the Set-Cookie
header without checking for semicolons or control characters.

An application that sets them from request data can be made to add
other cookie attributes, such as Domain or SameSite.

Problem types
-------------
- CWE-116 Improper Encoding or Escaping of Output

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI/Cookie.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/0b3527faaa9de55f79ca7d59dd3bcfb2c5540e00.patch


========================================================================
CVE-2026-120645                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120645

  Distribution:  CGI
      Versions:  before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI versions before 5.00 for Perl allow denial of service via submitted
values used as a regex for optgroup selection in scrolling_list

Description
-----------
CGI versions before 5.00 for Perl allow denial of service via submitted
values used as a regex for optgroup selection in scrolling_list.

When rendering option groups, scrolling_list marks the selected options
by interpolating each selected value, by default taken from the request
parameters, unescaped into a substitution pattern.

A client can make the request die with an invalid pattern, or tie up
the process with one that backtracks heavily.

Problem types
-------------
- CWE-1333 Inefficient Regular Expression Complexity
- CWE-625 Permissive Regular Expression

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/824956fbb0c4eb77044ba2dc9180a30df12cb309.patch


========================================================================
CVE-2026-120646                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120646

  Distribution:  CGI
      Versions:  from 4.71 before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI versions from 4.71 before 5.00 for Perl allow denial of service via
a plain string dereferenced as a symbolic reference in uploadInfo

Description
-----------
CGI versions from 4.71 before 5.00 for Perl allow denial of service via
a plain string dereferenced as a symbolic reference in uploadInfo.

uploadInfo dereferences its argument and calls its filename method
without checking that it is an upload filehandle. A plain string naming
a defined global variable, such as the parameter value from ?upload=0,
is treated as a symbolic reference, and the method call on it dies.

Problem types
-------------
- CWE-843 Access of Resource Using Incompatible Type ('Type Confusion')

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/a14a7decfdc18f2daf436d30df9b543e3f0f8da3.patch


========================================================================
CVE-2026-120647                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120647

  Distribution:  CGI
      Versions:  before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI versions before 5.00 for Perl allow Content-Disposition parameter
injection via unescaped double quotes in the header attachment filename

Description
-----------
CGI versions before 5.00 for Perl allow Content-Disposition parameter
injection via unescaped double quotes in the header attachment
filename.

header(-attachment => $name) writes $name into the quoted filename
parameter of Content-Disposition without escaping double quotes.

An application that passes request data as the attachment name can be
made to send a second filename parameter, changing the name the
response is saved under.

Problem types
-------------
- CWE-116 Improper Encoding or Escaping of Output

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/131280a5c5bc51b65797bd57ef0ee8da8468065b.patch


========================================================================
CVE-2026-120648                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120648

  Distribution:  CGI
      Versions:  before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI versions before 5.00 for Perl allow HTML injection via text
containing --> in comment

Description
-----------
CGI versions before 5.00 for Perl allow HTML injection via text
containing --> in comment.

Arguments are placed between <!-- and --> without escaping, so text
containing --> closes the comment early.

An application that passes request data to comment can be made to
inject HTML into the page.

Problem types
-------------
- CWE-79 Improper Neutralization of Input During Web Page Generation
  ('Cross-site Scripting')

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/6a17eb84703d84bca86b0079f5870ca9c921ffd4.patch


========================================================================
CVE-2026-120650                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120650

  Distribution:  CGI
      Versions:  before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI versions before 5.00 for Perl allow memory, CPU and disk exhaustion
via missing or unenforced request size, parameter and upload limits

Description
-----------
CGI versions before 5.00 for Perl allow memory, CPU and disk exhaustion
via missing or unenforced request size, parameter and upload limits.

$CGI::POST_MAX defaults to no limit, and when set is not enforced for
chunked multipart bodies or for the boundary line of a multipart body
without a boundary= parameter. Bodies saved as PUTDATA, POSTDATA or
PATCHDATA uploads are read into memory in one go, and nothing limits
the number of parameters or uploads.

Problem types
-------------
- CWE-770 Allocation of Resources Without Limits or Throttling

Workarounds
-----------
For deployments that cannot upgrade, limit the request body size at the
web server and set $CGI::POST_MAX.

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/17b838dc14d2b82ae6c7e76f66ec2c3f3b08038b.patch
https://github.com/leejo/CGI.pm/commit/f3febefe63fe3881d8c3ae10fa83ca8ec950b959.patch
https://github.com/leejo/CGI.pm/commit/277baeb74fde7bce975a7bd0a1f98dcf1b9b2050.patch
https://github.com/leejo/CGI.pm/commit/8940a74e53a41563f72813b45f99cceaaa4c92e8.patch


========================================================================
CVE-2026-120651                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-120651

  Distribution:  CGI
      Versions:  before 5.00
      MetaCPAN:  https://metacpan.org/dist/CGI
      VCS Repo:  https://github.com/leejo/CGI.pm


CGI versions before 5.00 for Perl allow an infinite loop on a short
request body when $DISABLE_UPLOADS is set

Description
-----------
CGI versions before 5.00 for Perl allow an infinite loop on a short
request body when $DISABLE_UPLOADS is set.

When $CGI::PUTDATA_UPLOAD or an upload hook is set,
read_postdata_putdata takes a request body that is not a form
submission. With $CGI::DISABLE_UPLOADS set, it discards the body by
reading until Content-Length bytes have arrived. Once a body shorter
than its Content-Length runs out, every read returns 0, so the loop
never ends.

A client can keep a server process spinning with one such request.

Problem types
-------------
- CWE-835 Loop with Unreachable Exit Condition ('Infinite Loop')

Solutions
---------
Upgrade to CGI 5.00 or later.

References
----------
https://metacpan.org/release/LEEJO/CGI-4.72/source/lib/CGI.pm
https://metacpan.org/release/LEEJO/CGI-5.00/changes
https://github.com/leejo/CGI.pm/commit/16d9f61acf8b844b7360e8d726338e3ce34dfa9f.patch
https://github.com/leejo/CGI.pm/commit/8a78305065690461ae283fa24e5ebe4ec8a22fbc.patch


