Received: (qmail 28216 invoked by uid 550); 22 Dec 2023 22:33:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21996 invoked from network); 22 Dec 2023 17:51:48 -0000
Date: Fri, 22 Dec 2023 18:52:21 +0100
From: Erik Auerswald <auerswal@unix-ag.uni-kl.de>
To: oss-security@lists.openwall.com
Message-ID: <20231222175221.GA7191@unix-ag.uni-kl.de>
References: <20231221143630.GD14101@suse.de>
 <20231221144656.GA40693@veps.esmtp.org>
 <20231222104647.GH14101@suse.de>
 <ZYVufT0sq16Z-M43@symphytum.spacehopper.org>
 <20231222121134.GI14101@suse.de>
 <20231222150438.GA13989@unix-ag.uni-kl.de>
 <CAHjsZGbiZYGug2L04iZ+VEmMg-pdfKyKOGdcSeCLnsZYd0Vm2Q@mail.gmail.com>
 <CAN_LGv2BhL40uhEk0TdYaYmd9zodSS-UJjWH5xSdLZWSoDFUMw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAN_LGv2BhL40uhEk0TdYaYmd9zodSS-UJjWH5xSdLZWSoDFUMw@mail.gmail.com>
Author: Erik Auerswald <auerswal@unix-ag.uni-kl.de>
Subject: Re: [oss-security] Re: New SMTP smuggling attack

Hi all,

On Sat, Dec 23, 2023 at 12:40:06AM +0800, Alexander E. Patrakov wrote:
> On Fri, Dec 22, 2023 at 11:57 PM Rodrigo Freire <rfreire@redhat.com> wrote:
> > On Fri, Dec 22, 2023 at 12:10 PM Erik Auerswald
> > <auerswal@unix-ag.uni-kl.de> wrote:
> > 
> > >   * The CERT/CC and VINCE involvement resulted in "there is no
> > >     vulnerability".
> >
> > I'm trying to make sense of it - where's the compromise of the
> > Confidentiality, Integrity or Availability of the affected mail
> > servers?
> 
> The integrity of the sender's identity, as a minimum, is compromised
> here. Normally, when relaying mail, servers add a "Received:" header
> that specifies where they received the connection from. This allows
> tracking down the true origin of the message. The smuggled message
> does not have such a header and thus misrepresents the vulnerable
> relay as the ultimate sender. Additionally, if the relay has
> destination-based deny lists that deny some but not all addresses on
> the destination domain, they are sidestepped.

Indeed, this is an integrity attack.  It breaks the integrity of an email
system, as opposed to the integrity of a single product.  This might
make it a bit harder to understand, although the SEC Consult blog post[1]
provides an in-depth description of the issue.

[1]: https://sec-consult.com/blog/detail/smtp-smuggling-spoofing-e-mails-worldwide/

Any user of an affected outbound server can spoof email from any user of
the same outbound server despite SPF and DKIM (DMARC+DKIM can prevent this
in some cases, also more senders can be spoofed in specific cases, for
details see the blog post[1]).  But for this to work, the inbound server
must act as a confused deputy.  Both outbound and inbound servers need to
be differently vulnerable to enable the attack.  This specific attack can
be prevented unilaterally on either the outbound or the inbound server.

According to the blog post[1], GMX immediatly understood the threat to
their system and fixed it on their side (at least as an outbound server).
Microsoft also understood the threat, they just took longer to implement
a fix (at least as an outbound server).

[The Cisco Secure Email [Cloud] Gateway's default enabled feature to act
as a facilitator of the attack is a bit perplexing.  I would expect an
email security product to thwart attacks, not enable them.]

For email server open source projects, relevant for the oss-security
list, the primary vulnerability is to act as a confused deputy inbound
server, because users of such email servers usually have a much smaller
number of accounts than the big freemail providers.  But, in general,
they could also possibly act as a vulnerable outbound server, e.g.,
after a legitimite user account has been compromised.

Cheers,
Erik
