X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1234" "Thursday" "3" "December" "2015" "08:26:42" "-0800" "Devananda van der Veen" "devananda.vdv@gmail.com" "<56606D42.7070205@gmail.com>" "52" "[oss-security] OpenStack Ironic does not honor clean steps (CVE-2015-7514)" nil nil nil "12" "2015120316:26:42" "[oss-security] OpenStack Ironic does not honor clean steps (CVE-2015-7514)" (number mark "U       devananda.vd Dec  3   52/1234  " thread-indent "\"[oss-security] OpenStack Ironic does not honor clean steps (CVE-2015-7514)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32092 invoked by uid 550); 3 Dec 2015 16:27:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31756 invoked from network); 3 Dec 2015 16:27:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:subject:to:message-id:date:user-agent:mime-version
         :content-type:content-transfer-encoding;
        bh=xUrLbNJnErH+nl0yGQ+9f1L77OEYJqCI2qEoSGKPXa0=;
        b=eGPUc0GqCMIUiZbnXGpcsG5t1uaJxVOfsohlnecU0mzbYNDh4z058wv+Vb/FbQaZZQ
         1TgHmlwitwYgphrcMSjBS4UPETkyuQj6j2MGAAqnJhyDqV5e9L0CXOeslLG0YMSNDvIY
         TohY5bS5deVff32+exVCKys0K3kLjWzS7tae4t+3BE1vwe5v2FnOff9i7pANJSeRjCen
         hhiH6S4UcofS6mXScHKx2tOgfRJty6WXlsqcmT0STfLlmn692mGw9hILDWSg0f77Juif
         MTmHM1jroyPPmWwGpYuUkFcgO8ry+DBlzOIIBn7xt5oT1PVQiK0bwkMHBaibOODyLCAJ
         hY4w==
X-Received: by 10.98.17.14 with SMTP id z14mr14481028pfi.55.1449160008956;
        Thu, 03 Dec 2015 08:26:48 -0800 (PST)
From: Devananda van der Veen <devananda.vdv@gmail.com>
X-Enigmail-Draft-Status: N1110
To: oss-security@lists.openwall.com
Message-ID: <56606D42.7070205@gmail.com>
Date: Thu, 3 Dec 2015 08:26:42 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] OpenStack Ironic does not honor clean steps (CVE-2015-7514)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

===========================================
OpenStack Ironic does not honor clean steps
===========================================

:Date: December 03, 2015
:CVE: CVE-2015-7514


Affects
~~~~~~~
- - Ironic: >= 4.2.0, <= 4.2.1


Description
~~~~~~~~~~~
Brad Morgan from Rackspace reported a vulnerability in Ironic. To
prevent user data leak, Ironic is expected to "clean" a server after
use, however that is transparently not happening. Previous tenant's data
may be left behind on the disk and may be available to new users. All
Ironic setups are affected.

Patches
~~~~~~~
- - https://review.openstack.org/#/c/253001 (Liberty)
- - https://review.openstack.org/#/c/252993 (Mitaka)


Credits
~~~~~~~
- - Brad Morgan from Rackspace (CVE-2015-7514)


References
~~~~~~~~~~
- - https://bugs.launchpad.net/bugs/1517277
- - http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-7514


Notes
~~~~~
- - This fix will be included in a future 4.2.2 release.
- - This fix will be included in a future 4.3 release.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlZgbUIACgkQhFvuBniJg6cbxwCgl9eepjJWbkWXsZsPDjhN/bDR
rCkAoOLlZYGgItR7LirG4u6uvDaljOby
=rXfP
-----END PGP SIGNATURE-----
