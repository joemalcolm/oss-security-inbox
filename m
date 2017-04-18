X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["943" "Tuesday" "18" "April" "2017" "08:34:14" "-0700" "Ian Zimmerman" "itz@primate.net" "<20170418153218.2599.042D7EFA@matica.foolinux.mooo.com>" "27" "[oss-security] Re: Apache XML Graphics FOP information disclosure vulnerability" nil nil nil "4" "2017041815:34:14" "[oss-security] Re: Apache XML Graphics FOP information disclosure vulnerability" (number mark "U       itz@primate. Apr 18   27/943   " thread-indent "\"[oss-security] Re: Apache XML Graphics FOP information disclosure vulnerability\"\n") "<017201d2b81c$4defec50$e9cfc4f0$@gmail.com>" ("<017201d2b81c$4defec50$e9cfc4f0$@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13396 invoked by uid 550); 18 Apr 2017 15:47:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3514 invoked from network); 18 Apr 2017 15:34:28 -0000
X-Authentication-Warning: acedia.primate.net: itz set sender to itz@ahiker.mooo.com using -f
Date: Tue, 18 Apr 2017 08:34:14 -0700
From: Ian Zimmerman <itz@primate.net>
To: oss-security@lists.openwall.com
Message-ID: <20170418153218.2599.042D7EFA@matica.foolinux.mooo.com>
Mail-Followup-To: oss-security@lists.openwall.com
References: <017201d2b81c$4defec50$e9cfc4f0$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <017201d2b81c$4defec50$e9cfc4f0$@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] Re: Apache XML Graphics FOP information disclosure vulnerability

On 2017-04-18 09:18, Simon Steiner wrote:

> CVE-2017-5661:
>  Apache XML Graphics FOP information disclosure vulnerability

[...]

> Description:

>  Files lying on the filesystem of the server which uses batik can be
>  revealed to arbitrary users who send maliciously formed SVG
>  files. The file types that can be shown depend on the user context in
>  which the exploitable application is running. If the user is root a
>  full compromise of the server--including confidential or sensitive
>  files--would be possible.
> 
>  XXE can also be used to attack the availability of the server via
>  denial of service as the references within a xml document can
>  trivially trigger an amplification attack.

Was this a copy and paste accident?

-- 
Please *no* private Cc: on mailing lists and newsgroups
Personal signed mail: please _encrypt_ and sign
Don't clear-text sign:
http://primate.net/~itz/blog/the-problem-with-gpg-signatures.html
