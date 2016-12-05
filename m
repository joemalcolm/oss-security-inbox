X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["718" "Monday" "5" "December" "2016" "09:00:13" "+0200" "Aki Tuomi" "aki.tuomi@dovecot.fi" "<1ddea9c3-3475-8f6a-95db-099c055076e6@dovecot.fi>" "25" "[oss-security] Re: Important vulnerability in Dovecot (CVE-2016-8652)" "^Date:" nil nil "12" "2016120507:00:13" "[oss-security] Re: Important vulnerability in Dovecot (CVE-2016-8652)" (number mark "        aki.tuomi@do Dec  5   25/718   " thread-indent "\"[oss-security] Re: Important vulnerability in Dovecot (CVE-2016-8652)\"\n") "<f77747a7-7882-0be4-06ff-0db15495f742@dovecot.fi>" ("<f77747a7-7882-0be4-06ff-0db15495f742@dovecot.fi>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1408 invoked by uid 550); 5 Dec 2016 16:08:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19489 invoked from network); 5 Dec 2016 07:00:25 -0000
References: <f77747a7-7882-0be4-06ff-0db15495f742@dovecot.fi>
Organization: Dovecot Oy
Message-ID: <1ddea9c3-3475-8f6a-95db-099c055076e6@dovecot.fi>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <f77747a7-7882-0be4-06ff-0db15495f742@dovecot.fi>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Mon, 5 Dec 2016 09:00:13 +0200
From: Aki Tuomi <aki.tuomi@dovecot.fi>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Important vulnerability in Dovecot (CVE-2016-8652)
To: oss-security@lists.openwall.com



On 02.12.2016 09:02, Aki Tuomi wrote:
> Important vulnerability in Dovecot (CVE-2016-8652)
> CVSS score: 7.4 (CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:C/C:N/I:N/A:H)
> Affected version(s): 2.2.25.1 up to 2.2.26.1
> Fixed in: 2.2.27.1rc1
>
> Short summary: Dovecot auth component can be crashed by remote user when
> auth-policy component is activated.
>
> If auth-policy component has been activated in Dovecot, then remote user
> can use SASL authentication to crash auth component.
>
> Workaround is to disable auth-policy component until fix is in place.
> This can be done by commenting out all auth_policy_* settings.
>
> Aki Tuomi
> Dovecot oy
>

The affected versions are from 2.2.25 to 2.2.26.1.

Aki Tuomi
Dovecot oy
