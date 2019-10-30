X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["554" "Wednesday" "30" "October" "2019" "09:26:36" "+0200" "Henri Salo" "henri@nerv.fi" "<20191030072636.GA17423@tunkki.bugs.fi>" "17" "Re: [oss-security] Bodhi: Script injection" nil nil nil "10" "2019103007:26:36" "[oss-security] Bodhi: Script injection" (number mark "U       henri@nerv.f Oct 30   17/554   " thread-indent "\"Re: [oss-security] Bodhi: Script injection\"\n") "<133fcd41f0466a9efbfc1c1d5fa6f21f586436b4.camel@electronsweatshop.com>" ("<133fcd41f0466a9efbfc1c1d5fa6f21f586436b4.camel@electronsweatshop.com>") nil nil nil nil nil nil nil "Re: [oss-security] Bodhi: Script injection" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16219 invoked by uid 550); 30 Oct 2019 07:26:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16201 invoked from network); 30 Oct 2019 07:26:51 -0000
X-Virus-Scanned: Debian amavisd-new at nerv.fi
Message-ID: <20191030072636.GA17423@tunkki.bugs.fi>
References: <133fcd41f0466a9efbfc1c1d5fa6f21f586436b4.camel@electronsweatshop.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <133fcd41f0466a9efbfc1c1d5fa6f21f586436b4.camel@electronsweatshop.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: oss-security@lists.openwall.com
Date: Wed, 30 Oct 2019 09:26:36 +0200
From: Henri Salo <henri@nerv.fi>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Bodhi: Script injection
To: Randy Barlow <randy@electronsweatshop.com>

On Tue, Oct 29, 2019 at 10:12:35AM -0400, Randy Barlow wrote:
> A script injection vulnerability[0] was recently reported in Bodhi[1],
> and a patch[2] has been merged in response. Users with packager
> privileges were able to create or edit updates that included <script>
> tags.
> 
> There is not yet a CVE for this issue.
> 
> 
> [0] https://pagure.io/fedora-infrastructure/issue/8324
> [1] https://github.com/fedora-infra/bodhi
> [2] https://github.com/fedora-infra/bodhi/pull/3657

You can request CVE via https://cveform.mitre.org/

-- 
Henri Salo
