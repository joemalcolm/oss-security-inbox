X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4085" "Wednesday" "3" "August" "2016" "09:05:30" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1608030902300.2418@tvnag.unkk.fr>" "127" "[oss-security] [SECURITY VULNERABILITY] curl: use of connection struct after free" nil nil nil "8" "2016080307:05:30" "[oss-security] [SECURITY VULNERABILITY] curl: use of connection struct after free" (number mark "U       daniel@haxx. Aug  3  127/4085  " thread-indent "\"[oss-security] [SECURITY VULNERABILITY] curl: use of connection struct after free\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7571 invoked by uid 550); 3 Aug 2016 07:05:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7493 invoked from network); 3 Aug 2016 07:05:43 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 3 Aug 2016 09:05:30 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1608030902300.2418@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="1129329158-699417187-1470207782=:2418"
Content-ID: <alpine.DEB.2.20.1608030905290.2418@tvnag.unkk.fr>
Subject: [oss-security] [SECURITY VULNERABILITY] curl: use of connection struct after free

--1129329158-699417187-1470207782=:2418
Content-Type: text/plain; FORMAT=flowed; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.20.1608030905291.2418@tvnag.unkk.fr>

use of connection struct after free
===================================

Project cURL Security Advisory, August 3rd 2016 -
[Permalink](https://curl.haxx.se/docs/adv_20160803C.html)

VULNERABILITY
-------------

libcurl is vulnerable to a use-after-free flaw.

libcurl works with easy handles using the type 'CURL *' that are objects the
application creates using curl_easy_init(). They are the handles that are all
each associated with a single transfer at a time. libcurl also has an internal
struct that represents and holds most state that is related to a single
connection. An easy handle can hold references to one or many such connection
structs depending on the requested operations.

When using libcurl's multi interface, an application performs transfers by
adding one or more easy handles to the multi handle and then it can drive all
those transfers in parallel.

Due to a flaw, libcurl could leave a pointer to a freed connection struct
dangling in an easy handle that was previously added to a multi handle when
curl_multi_cleanup() is called with an easy handle still added to it. This
does not seem to cause any notable harm if the handle is then closed properly.

However, if the easy handle would instead get used again with the easy
interface and curl_easy_perform() to do another transfer, it would blindly use
the connection struct pointer now pointing to freed memory.

An application could be made to allocate its own fake version of the connect
struct, fill in some data and then have the curl_easy_perform() call do
something that clearly was not intended by the original code.

For example, this could be an application using a component or library that
uses libcurl to do something against fixed URLs or fixed host names or with a
set of fixed options, but using this flaw the application can then make the
component to do something completely different and unintended.

Pseudo code for a bad application

     easy = curl_easy_init();
     curl_easy_setopt(easy, CURLOPT_URL, "http://example.com/");

     // --- start of code to confuse libcurl ---
     multi = curl_multi_init();
     curl_multi_add_handle(multi, easy);
     curl_multi_perform(multi, &still_running);
     curl_multi_cleanup(multi);

     // --- attack code
     allocate_fake_connection_struct()
     fill_in_fake_connection_struct()

     // ---- end of confusion code

     // now this is called, it will not use example.com at all even if the
     // option above asks for it...

     curl_easy_perform(easy);

This flaw can also be exploited using libcurl bindings in other languages.

We are not aware of any exploit of this flaw.

INFO
----

This flaw does not affect the curl command line tool.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2016-5421 to this issue.

AFFECTED VERSIONS
-----------------

- Affected versions: libcurl 7.32.0 to and including 7.50.0
- Not affected versions: libcurl >= 7.50.1

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

In version 7.50.1, curl clears the memory pointer immediately after free thus
removing this vulnerability.

A [patch for CVE-2016-5421](https://curl.haxx.se/CVE-2016-5421.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.50.1

  B - Apply the patch to your version and rebuild

  C - Do not expose easy handles from your libcurl using components

TIME LINE
---------

Reported on July 3, 2016. We contacted distros@openwall on July 31.

libcurl 7.50.1 was released on August 3 2016, coordinated with the publication
of this advisory.

CREDITS
-------

Found and explained to us by Marcelo Echeverria and Fernando Muñoz.

Thanks a lot!

-- 

  / daniel.haxx.se
--1129329158-699417187-1470207782=:2418--
