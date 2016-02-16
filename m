X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2312" "Wednesday" "17" "February" "2016" "05:24:10" "+1300" "Amos Jeffries" "squid3@treenet.co.nz" "<56C34D2A.9080708@treenet.co.nz>" "72" "Re: [oss-security] Re: CVE request: Squid HTTP Caching Proxy 3.5.13, 4.0.4, 4.0.5 denial of service" nil nil nil "2" "2016021616:24:10" "[oss-security] Re: CVE request: Squid HTTP Caching Proxy 3.5.13, 4.0.4, 4.0.5 denial of service" (number mark "U       squid3@treen Feb 17   72/2312  " thread-indent "\"Re: [oss-security] Re: CVE request: Squid HTTP Caching Proxy 3.5.13, 4.0.4, 4.0.5 denial of service\"\n") "<20160216144501.833566C08BD@smtpvmsrv1.mitre.org>" ("<20160216144501.833566C08BD@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15675 invoked by uid 550); 16 Feb 2016 16:24:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15657 invoked from network); 16 Feb 2016 16:24:30 -0000
To: oss-security@lists.openwall.com
References: <20160216144501.833566C08BD@smtpvmsrv1.mitre.org>
From: Amos Jeffries <squid3@treenet.co.nz>
X-Enigmail-Draft-Status: N1110
Message-ID: <56C34D2A.9080708@treenet.co.nz>
Date: Wed, 17 Feb 2016 05:24:10 +1300
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <20160216144501.833566C08BD@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: CVE request: Squid HTTP Caching Proxy 3.5.13,
 4.0.4, 4.0.5 denial of service

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 17/02/2016 3:45 a.m., cve-assign@mitre.org wrote:
>> http://www.squid-cache.org/Advisories/SQUID-2016_1.txt
> 
>> Patch for 3.5 is
>> <http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-1398
1.patch>.
> 
>> Patch for 4.0 is
>> <http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-1398
1.patch>.
> 
> Is this correct or do you mean the 4.0 patch is
> http://www.squid-cache.org/Versions/v4/changesets/squid-4-14538.patch 
instead?
> 

Paste error on my part sorry.
The squid-4-14538.patch URL is correct for 4.0.

> 
>> A remotely triggerable denial of service has been found in Squid
>> proxy. The proxy incorrectly handles server TLS failure which almost
>> always results in crashing the entire proxy. Denying service for all
>> other clients using it.
> 
>>   Bug 4437: Fix Segfault on Certain SSL Handshake Errors
> 
>>   Squid after an unsuccessful try to connect to the remote server may
 make two
>>   concurrent retries to connect to the remote SSL server, calling twi
ce the
>>   FwdState::retryOrBail() method, which may result to unexpected beha
viour.
> 
>>   Prevent this by just closing the connection to the remote SSL serve
r inside
>>   FwdState::connectedToPeer method on error and instead of calling th
e
>>   FwdState::retryOrBail method, just allow comm_close handler to retr
y the
>>   connection if required.
> 
>> src/FwdState.cc
> 
> Use CVE-2016-2390.
> 
> 


Thank you.

Amos
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (MingW32)

iQIcBAEBAgAGBQJWw00oAAoJEGvSOzfXE+nLo0sP/jD7YAY3hL0EF/WLtzLG9OYf
TIvltUwd28oVfjnqX8cqClEBebtc9hPZ0JSqzS9YNz2VhzsedaPmBNm2bPUcscyX
dWw72Uu3H42hfpO7Xsizm6RIyE9SfJqB6h0zXZFSotAc3XcirNREGSWqO2Jp3TyX
TpbbnkHpxGTo9gvyLrG++agsLECyDu03HAozz0Av4Jsgh8cJo8NSUQiGjTsmW8TS
Se2AMQcJhEVi22TfDVNCJfltaUy7BcWe/7f2EefbJ/fuVTBXOZiAglYZr/PaC/T4
MRUAI7Uh5CB5yVxvkrVZb6WP90+SdT1TnWFU1Z0kZxPgf4DXUaY3it0kmZJAlNDI
Y6j/Qudqk85LGkjjOCb1CACLnb9tP1qddHc6J9tHuZdmmThVZt+5OIjxHhj5scRC
yQI0WROC9fx7HSLtq+LEQEGEX9JQylhz8a9wZ2xiD1T7rAeEiEyrqadvya7g+nvu
RdAire5MgXtx0GjqRxw9SOClBXWfzPGh4yS46cFxqRZQXRcuJHqvNyEUNyShqbMa
2X6yWgrXcXskJnEgoJ42QZ7C7WE61C3h1pJ/2aITIWYop8l0/PcG3ZKvj7EFypVg
Mb9Ge0v0HVOuznhmsakpaKMTQ4l2nLldkiZfzRKRSeftce50dDdyYNWvdselnYvu
gdTyAHjGs0/Xtnzy59t2
=+pRN
-----END PGP SIGNATURE-----
