X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3043" "Thursday" "30" "April" "2015" "22:14:19" "+1200" "Amos Jeffries" "squid3@treenet.co.nz" "<5542007B.5030703@treenet.co.nz>" "72" "Re: [oss-security] Re: CVE policy clarification request" nil nil nil "4" "2015043010:14:19" "[oss-security] Re: CVE policy clarification request" (number mark "        squid3@treen Apr 30   72/3043  " thread-indent "\"Re: [oss-security] Re: CVE policy clarification request\"\n") "<20150429211945.3129D6C0056@smtpvmsrv1.mitre.org>" ("<20150429211945.3129D6C0056@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21574 invoked by uid 550); 30 Apr 2015 10:14:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21552 invoked from network); 30 Apr 2015 10:14:38 -0000
Message-ID: <5542007B.5030703@treenet.co.nz>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <20150429211945.3129D6C0056@smtpvmsrv1.mitre.org>
In-Reply-To: <20150429211945.3129D6C0056@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Date: Thu, 30 Apr 2015 22:14:19 +1200
From: Amos Jeffries <squid3@treenet.co.nz>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE policy clarification request
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 30/04/2015 9:19 a.m., cve-assign@mitre.org wrote:
>> My observation of Mitre allocations has been that when a bug B is
>> only acting because of another A exploited first the CVE gets
>> assigned to the A. In this case the client willingness to accept
>> fake certificate makes it vulnerable to mistakes in the proxy.
> 
>> Is my observation correct or does the server validation bug get a
>> CVE assignment anyway?
> 
> We feel that you are eligible to have a CVE ID for the "server
> cert validation was a bit naive" issue if you would like to have
> one.
> 
> Here, behavior B is the "server cert validation was a bit naive" 
> issue. Behavior A is "the client is known to accept one blatantly
> fake server certificate." However, there might be scenarios in
> which behavior A is intended. For example, maybe an organization
> has unusual requirements that are well addressed by the "ssl_bump
> client-first" choice. In particular, the organization physically
> disconnects all untrusted systems, as well as the external network
> connection, at a time when the client accepts the fake certificate,
> thereby ensuring that the client is using an expected fake
> certificate. The client users are trained to accept fake
> certificates at that instant of time, and at no other times. The
> client users are, however, relying on Squid to do proper server
> cert validation at all times. If Squid is not doing proper server
> cert validation, then you can report that as a Squid vulnerability
> and have a CVE ID. Should we proceed with sending that CVE ID?


Okay then, yes please.

"Squid HTTP Proxy configured with client-first SSL bumping does not
correctly validate server certificate hostname fields. As a result
malicious server responses can wrongly be presented through the proxy
to clients as secure authenticated HTTPS responses."

Affected versions are:
 3.2.1 -> 3.2.13
 3.3.1 -> 3.3.13
 3.4.1 -> 3.4.12
 3.5.1 -> 3.5.3

Fixed in versions (to be released in ~24hrs) 3.5.4, 3.4.13, 3.3.14,
and 3.2.14.

Upstream advisory (when published) will be at:
 http://www.squid-cache.org/Advisories/SQUID-2015_1.txt


Amos Jeffries
Squid Software Fundation
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (MingW32)

iQIcBAEBAgAGBQJVQgB6AAoJEGvSOzfXE+nLS0QP/i4D2Z0k1Hi8FdrO+MW7ZhKN
FSUlWBcsPkkO2PLvue6RM0XqulIkoiBtGBtuvREFoTsFTkjamNC/ApY500AtaHLo
ZOn7AwhWnlXkRjfub++JEbK3dcYq4HR0VBPAlgqWEc5EptjhKhtB8cEATMGZRwFr
Ng5jSdtyFFKEWy9yIzwoNdSSVXIIZcWwctJSckEzrBGGcW+tQcn73mcMV3JpACAL
lPMFb585zk+Bj6AvX3+EaLntC5DyM9Ad/2i+RkksnNdtFpQQQPd8gbfDEuC1J1M6
xXwi7CZK1qO4s0lGj2BZZu+wmSaFl2i/mPEyjbifZdexZR65N8vx6RVio7bjJX9p
KiHBwzIbmu5eLZfY3rOEWOteoluJx4o8YEfQAAhnF1AlNhNz+AY11volyxaYIASx
UU2fXRABtBK4bKgppVvWYs8U5YmPC7lMuyM9pPKlT9WNWI9lYJkOLm2hneU2YolA
nDH+Tyb29z25VvfgxIDrKEQziyEkBu/h3hpO4V+MLLlK87PiF6/QuLgv6sYJsJkZ
yUhM/R/Fk/qnepbkjm/2mHuVR4SwCEoigF/hwrQ8NWTA/TLdBH9EioYkzSNSfgoh
Kp8od0Hnt5HswhpELSx6R5iHEbiOSXwpm0WYNZWAyotnp04nN3BLghEEfVW8sUML
o+Q/mKdMSPlm+wsJ56zH
=vTkk
-----END PGP SIGNATURE-----
