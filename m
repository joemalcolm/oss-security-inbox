X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4529" "Thursday" "20" "September" "2018" "01:57:26" "+0200" "X41 D-Sec GmbH Advisories" "advisories@x41-dsec.de" "<ba9fc226-3691-7852-46c5-6b81846e8822@x41-dsec.de>" "141" "[oss-security] X41 D-Sec GmbH Security Advisory X41-2018-008: Multiple Vulnerabilities in HylaFAX" nil nil nil "9" "2018091923:57:26" "[oss-security] X41 D-Sec GmbH Security Advisory X41-2018-008: Multiple Vulnerabilities in HylaFAX" (number mark "U       advisories@x Sep 20  141/4529  " thread-indent "\"[oss-security] X41 D-Sec GmbH Security Advisory X41-2018-008: Multiple Vulnerabilities in HylaFAX\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23700 invoked by uid 550); 20 Sep 2018 05:49:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20447 invoked from network); 19 Sep 2018 23:58:00 -0000
From: X41 D-Sec GmbH Advisories <advisories@x41-dsec.de>
To: bugtraq@securityfocus.com, fulldisclosure@seclists.org,
 oss-security@lists.openwall.com
Message-ID: <ba9fc226-3691-7852-46c5-6b81846e8822@x41-dsec.de>
Date: Thu, 20 Sep 2018 01:57:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] X41 D-Sec GmbH Security Advisory X41-2018-008: Multiple
 Vulnerabilities in HylaFAX

X41 D-SEC GmbH Security Advisory: X41-2018-008

Multiple Vulnerabilities in HylaFAX
===================================


Overview
--------
Confirmed Affected Versions: HylaFAX 6.0.6, HylaFAX+ 5.6.0
Confirmed Patched Versions: HylaFAX 6.0.7, HylaFAX+ 5.6.1
Vendor: Hylafax, Hylafax+
Vendor URL: https://www.hylafax.org/, http://hylafax.sourceforge.net/
Credit: X41 D-SEC GmbH, Luis Merino, Eric Sesterhenn, Markus Vervier
Status: Public
Advisory-URL: https://www.x41-dsec.de/lab/advisories/x41-2018-008-Hylafax/


Summary and Impact
------------------
Severity Rating: Critical
Vector: Incoming fax call
CVE: CVE-2018-17141
CWE: 122, 457
CVSS Score: 9.0
CVSS Vector: CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I:H/A:H
Multiple bugs were found in the code handling fax page reception in JPEG
format that allow arbitrary writes to an uninitialized pointer by remote
parties dialing in. When processing an specially crafted input, the issue
could lead to remote code execution.
Although JPEG reception is not announced as an available capability
by HylaFAX and is explicitly disabled during capabilities announcement,
there is code for JPEG support in HylaFAX that can be reached by a remote
party when setting certain flags during session negotiation.
X41 did not perform a full test or audit on the software.


Product Description
-------------------
HylaFAX is an open-source system for sending and receiving faxes using
one or multiple fax modems.

Analysis
========
X41 discovered several vulnerabilities in HylaFAX that are exploitable
by local or remote attackers.


Uninitialized pointer write in FaxModem::writeECMData()
-------------------------------------------------------
In CopyQuality.c++:990 recvRow is initialized only when params.jp is
exactly JP_GREY or JP_COLOR and also params.df is exactly zero.

{% highlight c %}
uint dataform = params.df + (params.jp ? params.jp + 4 : 0);
//...
switch (dataform) {
//...
case JPGREY+4:
case JPCOLOR+4:
    recvEOLCount = 0;
    recvRow = (uchar) malloc(10241000); // 1M should do it?
{% endhighlight %}
However, later in the same function recvRow is used as a target for
memcpy() when params.jp is JP_GREY or JP_COLOR, irrespective of
params.df.  Consequently, if a sender crafts a DCS signal that leads to
params.df being non-zero while params.jp is JP_GREY or JP_COLOR, then
recvRow will be uninitialized when it is used as a target for memcpy().
{% highlight c %}
if (params.jp != JPGREY && params.jp != JPCOLOR) {
    flushRawData(tif, 0, (const u_char) buf, cc);
} else {
    memcpy(recvRow, (const char) buf, cc);
    recvRow += cc;
}
{% endhighlight %}


Out of bounds write in FaxModem::writeECMData()
-----------------------------------------------
The same piece of code for memcpy at CopyQuality.c++:1045 can be
abused to perform an out of bounds write to recvRow, as there is no
bounds check before writing to and incrementing recvRow. This can
lead to remote code execution when an attacker sends an specially
crafted input.


Out of bounds write in FaxModem::recvPageDLEData()
--------------------------------------------------
CopyQuality:c++:446 presents another unbounded memcpy that can be
abused to perform an out of bounds write to recvRow.

{% highlight c %}
if (n >= RCVBUFSIZ)
    flushRawData(tif, 0, (const u_char) raw, n);
else {
    memcpy(recvRow, (const char) raw, n);
    recvRow += n;
}
{% endhighlight %}

The code doesn't seem to be reachable, as JPEG flag forces ECM
reception.


Workaround
----------
None.

Timeline
========
2018-06-07 Issues found
2018-08-24 Issue reported to vendor
2018-09-02 Vendor sends patches
2018-09-17 CVE ID assigned
2018-09-18 Patches released
2018-09-19 Advisory released

External links
==============
See https://www.x41-dsec.de/lab/blog/fax/ for a blog post related to this
advisory.

About X41 D-SEC GmbH
====================
X41 is an expert provider for application security services.
Having extensive industry experience and expertise in the area of
information security, a strong core security team of world class
security experts enables X41 to perform premium security services.
Fields of expertise in the area of application security are security
centered code reviews, binary reverse engineering and vulnerability
discovery.
Custom research and a IT security consulting and support services are
core competencies of X41.

- -- 
X41 D-SEC GmbH, Dennewartstr. 25-27, D-52068 Aachen
T: +49 241 9809418-0, Fax: -9
Unternehmenssitz: Aachen, Amtsgericht Aachen: HRB19989
Geschäftsführer: Markus Vervier


