X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["879" "Sunday" "25" "March" "2018" "15:11:21" "+0200" "Yann Ylavic" "ylavic@apache.org" "<2296bb0c-ea7e-427b-10f0-43c48e80325c@apache.org>" "28" "Re: [oss-security] CVE-2017-15710: Out of bound write in mod_authnz_ldap when using too small Accept-Language values" nil nil nil "3" "2018032513:11:21" "[oss-security] CVE-2017-15710: Out of bound write in mod_authnz_ldap when using too small Accept-Language values" (number mark "U       ylavic@apach Mar 25   28/879   " thread-indent "\"Re: [oss-security] CVE-2017-15710: Out of bound write in mod_authnz_ldap when using too small Accept-Language values\"\n") "<87r2o8jukc.fsf@fastmail.com>" ("<E1ezZFn-00031E-TI@romulus.home.bitnebula.com>" "<87r2o8jukc.fsf@fastmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5712 invoked by uid 550); 25 Mar 2018 13:48:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30084 invoked from network); 25 Mar 2018 13:11:39 -0000
To: oss-security@lists.openwall.com
References: <E1ezZFn-00031E-TI@romulus.home.bitnebula.com>
 <87r2o8jukc.fsf@fastmail.com>
From: Yann Ylavic <ylavic@apache.org>
Cc: Marius Bakke <mbakke@fastmail.com>, Daniel Ruggeri <druggeri@apache.org>,
 security@httpd.apache.org
Message-ID: <2296bb0c-ea7e-427b-10f0-43c48e80325c@apache.org>
Date: Sun, 25 Mar 2018 15:11:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <87r2o8jukc.fsf@fastmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: fr-classic
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2017-15710: Out of bound write in
 mod_authnz_ldap when using too small Accept-Language values

On 03/25/2018 12:52 PM, Marius Bakke wrote:
> Daniel Ruggeri <druggeri@apache.org> writes:
>> References:
>> https://httpd.apache.org/security/vulnerabilities_24.html
>
> Perhaps I'm hitting an outdated mirror (195.154.151.36), but this
> page lists "OptionsBleed" as the most recent CVE, and the download
> page shows 2.4.29 as the latest release.

The httpd website is missing some synchronization still, we are
currently looking into it.

>
> I found 2.4.33 by browsing my suggested mirror "manually", but it
> does not have the PGP signatures.
>
> https://apache.uib.no/httpd/
>
> I had to go to <https://www-eu.apache.org/dist/httpd/> in order to
> verify the integrity.

The website should be updated soon too, in the meantime the tarballs
(and signatures) are available here: https://archive.apache.org/dist/httpd/

Thanks for noticing and letting us now.

Regards,
Yann.
