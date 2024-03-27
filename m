Received: (qmail 6104 invoked by uid 550); 27 Mar 2024 20:55:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1998 invoked from network); 27 Mar 2024 20:52:35 -0000
Date: Wed, 27 Mar 2024 13:57:12 -0700
From: nightmare.yeah27@aceecat.org
To: oss-security@lists.openwall.com
Message-ID: <gdxwstno6ihmajmbjq3vbdjzgwseiihpdhv234dqzvu443uhdi@s7vcp44ktqls>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAEOG19rkUU8Pam5N67xyE9upepp_MahcnY48nek-VBAwo_NyAg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEOG19rkUU8Pam5N67xyE9upepp_MahcnY48nek-VBAwo_NyAg@mail.gmail.com>
Subject: [oss-security] Re: CVE-2024-28085: Escape sequence injection in util-linux wall

On Wed, Mar 27, 2024 at 11:00:00AM -0400, Skyler Ferrante (RIT Student) wrote:

> Wall-Escape (CVE-2024-28085)

> This allows unprivileged users to put arbitrary text on other
> users terminals, if mesg is set to y and wall is setgid. CentOS
> is not vulnerable since wall is not setgid. On Ubuntu 22.04 and
> Debian Bookworm, wall is both setgid and mesg is set to y by
> default.

I wonder how this comes about? I have looked around for a bit,
but the places that seemed relevant -- mostly /etc/default/devpts
and /etc/login.defs -- seem to show it should be 0600 by default.

Something somewhere overrides these, but I can't find that
something anywhere.

-- 
Ian
