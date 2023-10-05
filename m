Received: (qmail 13415 invoked by uid 550); 5 Oct 2023 16:04:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11410 invoked from network); 5 Oct 2023 16:02:47 -0000
Date: Thu, 5 Oct 2023 18:02:43 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: zdi@trendmicro.com
Message-ID: <20231005160242.GA4750@openwall.com>
References: <7b2e3fb3afc05aa39864e62b0c87a631b746f5c7.camel@runout.at> <ZRb180+B34Wmg1IM@jumper.schlittermann.de> <20230929165914.GA31245@openwall.com> <SJ0PR01MB7413CB07EDE457153C8C5C3CD1C0A@SJ0PR01MB7413.prod.exchangelabs.com> <ZR27jCirFcyI7smg@eldamar.lan> <SJ0PR01MB74130DAEAADAB8F76876E418D1CBA@SJ0PR01MB7413.prod.exchangelabs.com> <ZR5xJZc32fhGOE+/@jumper.schlittermann.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZR5xJZc32fhGOE+/@jumper.schlittermann.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Exim4 MTA CVEs assigned from ZDI

On Thu, Oct 05, 2023 at 10:17:41AM +0200, Heiko Schlittermann wrote:
> Hi ZDI,

If we want to talk to ZDI, we need to CC them explicitly - added.

ZDI - please let us all know if you have any comments on the below.

Also to ZDI, I think at this point it'd work best if you make all of
the available detail on these bugs public.  Will you, please?  The
advisories you published so far are non-specific to the point of being
almost useless beyond an initial heads-up.  Sorry for being so direct.

> zdi@trendmicro.com <zdi@trendmicro.com> (Mi 04 Okt 2023 23:01:37 CEST):
> > We have received a notification from the developers that these issues have been patched. We will be happy to update our advisories once they do so.
> 
> https://exim.org/static/doc/security/CVE-2023-zdi.txt
> 
> As publicly advertised, we patched only *a subset* of the issues.  And
> those patches are available to the public.  Unfortunately there is no
> confirmation from your side, whether those fixes really fix the issues.
> 
> One of the open issues is related to libspf2, which is Exim a user of,
> but not responsible for.
> 
>  ZDI-23-1472 | ZDI-CAN-17578 | CVE-2023-42118 | Exim Bug 3032
> 
> And about exactly *this libspf2* issue Salvatore asked you for information.
> 
> (As I did on Oct 1st already, along with the request for additional information on one of
> the other unfixed issues (DNSDB)). I didn't receive any response yet.
> 
>     Best regards from Dresden/Germany
>     Viele Gr????e aus Dresden
>     Heiko Schlittermann
> --
>  SCHLITTERMANN.de ---------------------------- internet & unix support -
>  Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
>  gnupg encrypted messages are welcome --------------- key ID: F69376CE -

Alexander
