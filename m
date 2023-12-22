X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/12/22/9
Message-ID: <CAN_LGv2BhL40uhEk0TdYaYmd9zodSS-UJjWH5xSdLZWSoDFUMw@mail.gmail.com>
Date: Sat, 23 Dec 2023 00:40:06 +0800
From: "Alexander E. Patrakov" <patrakov@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Re: New SMTP smuggling attack
Content-Type: text/plain; charset=utf-8

On Fri, Dec 22, 2023 at 11:57 PM Rodrigo Freire <rfreire@...hat.com> wrote:
>
> On Fri, Dec 22, 2023 at 12:10 PM Erik Auerswald
> <auerswal@...x-ag.uni-kl.de> wrote:
> >   * The CERT/CC and VINCE involvement resulted in "there is no
> >     vulnerability".
>
> I'm trying to make sense of it - where's the compromise of the
> Confidentiality, Integrity or Availability of the affected mail
> servers?
>

The integrity of the sender's identity, as a minimum, is compromised
here. Normally, when relaying mail, servers add a "Received:" header
that specifies where they received the connection from. This allows
tracking down the true origin of the message. The smuggled message
does not have such a header and thus misrepresents the vulnerable
relay as the ultimate sender. Additionally, if the relay has
destination-based deny lists that deny some but not all addresses on
the destination domain, they are sidestepped.

-- 
Alexander E. Patrakov
