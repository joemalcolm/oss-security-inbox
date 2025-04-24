Received: (qmail 18167 invoked by uid 550); 24 Apr 2025 23:57:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18005 invoked from network); 24 Apr 2025 23:57:39 -0000
Date: Fri, 25 Apr 2025 01:57:37 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20250424235737.GA24954@openwall.com>
References: <575DB6B1-8A9A-46C6-AA2C-9D0695E1FF85@contoso.com> <068a922d-d77d-45d2-9b18-e07e41c9a907@suse.de> <aAlSF2Z3LlN-avD6@eldamar.lan> <CAEo4CeMgzPGBc3KgijU6HLkUcj1kcQj=8_jGUWojZ7jBdgAWxA@mail.gmail.com> <47b612ea-0e3f-4b53-a711-8d089538fb65@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <47b612ea-0e3f-4b53-a711-8d089538fb65@gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] vulnerabilities in busybox tar and cpio tools

On Thu, Apr 24, 2025 at 07:09:44PM -0400, Demi Marie Obenour wrote:
> On 4/24/25 3:09 AM, Albert Veli wrote:
> > On Wed, Apr 23, 2025 at 10:51 PM Salvatore Bonaccorso <carnil@debian.org> wrote:
> >> FTR, this one has assigned CVE-2025-46394
> >> ...
> >> FTR, this one has CVE-2024-58251 assigned.
> > 
> > From what I can tell the latest release is busybox-1.37.0. Are these fixed
> > in this release? If not, do you have any link to patches I can apply to fix
> > these issues?
> > 
> > Regards,
> > Albert
> 
> This message was marked as spam by GMail.  The ARC-Authentication-Results
> header indicates that the mailing list is not configured in a DMARC-compatible
> way.  Specifically, the mailing list did not rewrite the From: header but did
> modify the message body, so the DKIM signature check failed.

This was a special case - DKIM-breaking message body modification
shouldn't normally happen here.

However, the list is indeed not DMARC-compatible: we insert
[oss-security] into the Subject when it's not already near the beginning
of that header (may break DKIM), and we relay messages from the list
server's IP address (may be against the From header domain's SPF,
although recipient servers may look at envelope-from instead, which we
do rewrite, so SPF will match in that respect).

For now, this is simply how it is.  Most delivery problems occur when
the sender's domain has strict DMARC policy ("p=reject"), so e.g. when
someone from google.com posts, the message doesn't get through to
subscribers on gmail.com.  For gmail.com to gmail.com, everything is
usually "fine" for now.

Yes, we may need to bite the bullet and add From header rewriting.

Alexander
