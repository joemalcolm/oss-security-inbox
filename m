Received: (qmail 12092 invoked by uid 550); 4 Jul 2022 13:17:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11665 invoked from network); 4 Jul 2022 13:15:52 -0000
Message-ID: <a165ce13d67c1d9dd29e4a4f0681ed5dbfd592aa.camel@powerdns.com>
From: Peter van Dijk <peter.van.dijk@powerdns.com>
To: oss-security@lists.openwall.com
Date: Mon, 04 Jul 2022 15:15:40 +0200
In-Reply-To: <YsLj+ux2Pgkir5F8@adhil>
References: <YsJ7JjZ/R/jqN+YX@itl-email>
	 <939888998.96730.1656936945905@appsuite.open-xchange.com>
	 <YsLj+ux2Pgkir5F8@adhil>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] DO NOT OPEN PREVIOUS MAIL Re: [oss-security]
 Denial of service in  GnuPG

On Mon, 2022-07-04 at 14:58 +0200, Jens-Wolfhard Schicke-Uffmann wrote:
> Hi,
> 
> On Mon, Jul 04, 2022 at 02:15:45PM +0200, Peter van Dijk wrote:
> > > On 04/07/2022 07:31 Demi Marie Obenour <demi@invisiblethingslab.com> wrote:
> > > Signature (of /dev/null) that triggers this bug is attached, along with
> > > the corresponding public key.
> > This is insane. You can't send weaponised exploits that crash email
> > clients to public mailing lists. Please do not do this again.
> What email client would that be specifically? Because at least on
> my end, nothing nefarious happened. GPG was called on the outermost
> layer of signature and verified the email in entirety (and did so
> quickly).

GNOME Evolution (Debian's version 3.38.3-1) hangs (interruptibly, by
navigating to another message) when trying to open the message. It
hangs completely (eventually I used the Force Quit that GNOME offered
me) when trying to reply to it.

Kind regards,
-- 
Peter van Dijk
PowerDNS.COM BV - https://www.powerdns.com/

