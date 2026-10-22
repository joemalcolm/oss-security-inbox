X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/27
Message-ID: <CAFuRGoBYN+nT+h7DhcW8VQ_DB6F2CGo6wyKa-s+e-C-R_ueDsw@mail.gmail.com>
Date: Thu, 22 Oct 2026 23:20:55 +0300
From: Oleksii Molchanov <oleksii.molchanov.pe@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-109618 / CVE-2026-109619: unofficial backport of the PHP OOM bailout / stale state fix to PHP 5.4.16 (EL7) and 5.3.3 (EL6)
Content-Type: text/plain; charset=utf-8

Hi,

I have ported the official minimal fix for CVE-2026-109618 and
CVE-2026-109619 (php-src commit 712e60f9ed, "Avoid state corruption
via bailout", the PHP 7.4 backport) to the PHP 5 packages of
Enterprise Linux 6 and 7, which will not get a vendor update:

  php-5.4.16-48.el7    (RHEL / CentOS / Oracle Linux / Scientific
                       Linux 7)  ->  php-5.4.16-48.el7.php2shell.1
  php-5.3.3-50.el6_10  (RHEL / CentOS / Oracle Linux 6)
                       ->  php-5.3.3-50.el6_10.php2shell.1

The patches are made against the vendor source trees (after %prep,
with all vendor patches applied) and are attached. The spec file
changes, a container build and CI are in:

  https://github.com/alvm/php2shell-eol-backport

This adds the EL6 / EL7 vendor packages to the unofficial backports
that Leon Lai announced for Amazon Linux and for PHP 7.3 on EL7:
https://www.openwall.com/lists/oss-security/2026/10/22/13


What the 7.4 fix maps to in the PHP 5 engine
--------------------------------------------

Ported directly to 5.4.16 and 5.3.3:

- Allocation failures no longer bail out. zend_mm_safe_error() and
  the "Possible integer overflow in memory allocation" check in the
  four safe_address() variants print the error to stderr and call
  _exit(1), through a new zend_mm_safe_error_ex(). zend_mm_panic()
  uses _exit() as well.
- The same exit path is used for both Balloc() errors in
  zend_strtod.c and for the string size overflow in
  concat_function(), the PHP 5 counterpart of the ZEND_CONCAT /
  ZEND_FAST_CONCAT checks. The second branch of concat_function()
  also gets the size check that was missing there.
- Request state is reset: sapi_deactivate() sets auth_user,
  auth_password, auth_digest, content_type_dup and current_user to
  NULL; zend_llist_destroy() resets head and tail;
  shutdown_executor() resets EG(error_handling) and EG(exception);
  php_request_shutdown() clears PG(http_globals) (PHP 5 otherwise
  clears them only at the next request startup) and resets
  PG(modules_activated).
- Multipart parsing keeps only the Content-Disposition and
  Content-Type part headers, ignores duplicates, and limits the
  number of parts with max_multipart_body_parts (default:
  max_input_vars + max_file_uploads).

Session upload progress is disabled in code in 5.4, as in the 7.4
backport. PHP 5.3 does not have the feature.

Not applicable to PHP 5: the zend_hash changes (the PHP 5 HashTable
grows through perealloc_recoverable() and has no fatal error path
there), the VM handler changes and the single-slot superglobal
arrays.


Notes for anyone porting to other PHP 5 trees
---------------------------------------------

- Later PHP 5 releases have more fatal allocation paths than these
  vendor trees: php-5.4.45 has two "String size overflow" sites in
  zend_operators.c, and php-5.6.40 has six "Possible integer
  overflow" call sites in zend_alloc.c instead of four. A port that
  converts only the call sites known from 5.4.16 misses them.
- Compared with Leon Lai's independent port to the Amazon Linux 2
  php-5.4.16 package (derived from the RHEL 7 one), the core changes
  are identical line for line. That port does not include the
  concat, Balloc(), zend_mm_panic() and max_multipart_body_parts
  parts; it also clears http_globals in
  php_request_shutdown_for_hook(), which no SAPI of the RHEL build
  calls. Details:
  https://github.com/alvm/php2shell-eol-backport/blob/main/docs/ALTERNATIVES.md


Risk on PHP 5
-------------

As of 22 Oct, Red Hat's VEX lists the RHEL 6 and 7 php packages as
"under investigation" for CVE-2026-109618 and as not affected by
CVE-2026-109619 ("vulnerable code not present"). An independent
analysis of PHP 5.3 [1] found that the out-of-memory fault can be
reached, but the published memory corruption step relies on PHP 7
engine internals, so on PHP 5 the known attack ends in a denial of
service; 5.4 to 5.6 were assessed by comparing the code only.

The backport applies the mitigation anyway, because it removes the
unsafe error path itself, not only the known way to reach it.

[1] Analysis of php2shell on PHP 5.3.15:
    https://github.com/euriconicacio/blog/blob/main/all_collections/_posts/2026-10-22-evaluating-php2shell-reachability-and-corruptibility-in-php-5-3-15.md


Behaviour changes
-----------------

- Exceeding memory_limit ends the process. "Fatal error: ..." goes
  to stderr (the web server error log), shutdown functions do not
  run, and temporary files of uploads in that request stay in /tmp
  until tmpwatch / systemd-tmpfiles removes them. This follows the
  7.4 fix.
- Session upload progress does not work (5.4).
- New php.ini directive max_multipart_body_parts.
- ABI: one new exported function (zend_mm_safe_error_ex); existing
  structures and functions are unchanged.


Testing
-------

The packages were rebuilt from the vendor SRPMs (pinned SHA-256) in
pinned Oracle Linux containers, and the test suite of the RPM %check
was compared with an unmodified rebuild of the same SRPM:

  EL7, 5.4.16: 12373 tests, failures 14 -> 23
               (8 session upload progress tests and
               tests/lang/bug45392.phpt)
  EL6, 5.3.3:  11213 tests, failures 55 -> 56
               (tests/lang/bug45392.phpt: the fatal error message
               now starts with an empty line, as with the 7.4 fix)

GitHub Actions rebuilds both packages on every push with the same
results, apart from a few environment-dependent tests (SPL file
owner tests, a timing test) that come and go between runners. No
exploit code was written or used.


Packages
--------

Signed RPMs and a yum repository, for those who prefer not to build
the packages themselves:

  https://github.com/alvm/php2shell-eol-backport/releases/tag/v1
  https://alvm.github.io/php2shell-eol-backport/

Signing key: 2757 B60F D23D ED25 021B  BE37 8079 7C97 A561 BC94

These are unofficial and come without support. TuxCare's commercial
ELS also shipped fixed builds of these packages on 21 Oct. Moving to
a supported PHP version remains the real fix.

Attached patches (SHA-256):

php-5.4.16-48.el7-cve-2026-109618.patch
  cefd460a8a3c73e4ccd42ae478e3cb944e19f713020983e0358878c3a0a7a33e
php-5.3.3-50.el6_10-cve-2026-109618.patch
  3f47e82abb08d2a84f945d7fe76eb59a2fbcff2305c2e415baedd26dab9f0eae

-- 
Oleksii Molchanov

Download attachment "php-5.4.16-48.el7-cve-2026-109618.patch" of type "application/x-patch" (12842 bytes)

Download attachment "php-5.3.3-50.el6_10-cve-2026-109618.patch" of type "application/x-patch" (12078 bytes)
