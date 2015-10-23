X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["741" "Friday" "23" "October" "2015" "23:53:04" "+0200" "Florian Weimer" "fweimer@redhat.com" "<562AAC40.4000002@redhat.com>" "18" "Re: [oss-security] Re: Duplicate CVE: CVE-2015-7703 in NTP" nil nil nil "10" "2015102321:53:04" "[oss-security] Re: Duplicate CVE: CVE-2015-7703 in NTP" (number mark "        fweimer@redh Oct 23   18/741   " thread-indent "\"Re: [oss-security] Re: Duplicate CVE: CVE-2015-7703 in NTP\"\n") "<CANO=Ty1DejyNjY5SHGSpbADx+Ece9B6+N837HqTkzecJaABKvQ@mail.gmail.com>" ("<874mhidqhp.fsf@redhat.com>" "<20151023160608.06B6D52E093@smtpvbsrv1.mitre.org>" "<CANO=Ty1DejyNjY5SHGSpbADx+Ece9B6+N837HqTkzecJaABKvQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1932 invoked by uid 550); 23 Oct 2015 21:53:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1912 invoked from network); 23 Oct 2015 21:53:19 -0000
References: <874mhidqhp.fsf@redhat.com>
 <20151023160608.06B6D52E093@smtpvbsrv1.mitre.org>
 <CANO=Ty1DejyNjY5SHGSpbADx+Ece9B6+N837HqTkzecJaABKvQ@mail.gmail.com>
Message-ID: <562AAC40.4000002@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CANO=Ty1DejyNjY5SHGSpbADx+Ece9B6+N837HqTkzecJaABKvQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Fri, 23 Oct 2015 23:53:04 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Duplicate CVE: CVE-2015-7703 in NTP
To: oss-security@lists.openwall.com

On 10/23/2015 06:39 PM, Kurt Seifried wrote:

> I'm going to also ensure we communicate our CVE's to upstreams, I could
> swear we did in this case but I can't find a specific artifact (e.g. sent
> email) of doing so from myself (but quite often I just assign the CVE and
> other people are handling the issue so that wouldn't be to abnormal) so I'm
> going to go on the assumption we failed to do so properly and update our
> process as well to ensure we do.

This is not the case.  <security@ntp.org> was notified on 2015-08-20.
As the flaws were of low impact and there was no reaction, we disclosed
the issues here:

  <http://openwall.com/lists/oss-security/2015/08/25/3>

I don't know what else we can do to avoid duplicates.

Florian
