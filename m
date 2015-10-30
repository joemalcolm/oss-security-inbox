X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["571" "Friday" "30" "October" "2015" "19:58:32" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20151030185832.GA21456@eldamar.local>" "22" "Re: [oss-security] hostapd/wpa_supplicant - Incomplete WPS and P2P NFC NDEF record payload length validation" nil nil nil "10" "2015103018:58:32" "[oss-security] hostapd/wpa_supplicant - Incomplete WPS and P2P NFC NDEF record payload length validation" (number mark "U       carnil@debia Oct 30   22/571   " thread-indent "\"Re: [oss-security] hostapd/wpa_supplicant - Incomplete WPS and P2P NFC NDEF record payload length validation\"\n") "<20150816131953.GA32445@pisco.westfalen.local>" ("<20150708144853.GE10457@w1.fi>" "<20150816131953.GA32445@pisco.westfalen.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18090 invoked by uid 550); 30 Oct 2015 18:58:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18068 invoked from network); 30 Oct 2015 18:58:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ewbBynBOuSU79OrRTegMnO64hTm2F1p1uDyiFjRVzsg=;
        b=nWO5M+gwPkGSrUF/AKMCi/RYLixcSZWpAEmpBXwTpzPlhORraiEwgeqEta+vo3vszr
         5qKAHvmeSrIc/wK7KXEO3SHcjQ1K2DwuwxJr4w+psHXJP0gQPfZP6T+L09bFlxonXOw2
         beU/yR6cs810eA7ynEw0T3JlK9DrNIes91qi7p+OZEPE+S+2DmodlwKkq84FVvWxSxR5
         u7g6SyFX0Jns8Ygbpu+lRfW5NCIo51gYMUcMLYbJ+QqIblByjaFtgW86j6zg5JKXsMiJ
         Ov9zyaQPanAjE90Gu+aeYueMa5OFJOuYTOh5gvjVYoyUHxU5FjdLlCUhlWvvhraJlgUb
         PGow==
X-Received: by 10.194.95.163 with SMTP id dl3mr11995587wjb.84.1446231515443;
        Fri, 30 Oct 2015 11:58:35 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 30 Oct 2015 19:58:32 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20151030185832.GA21456@eldamar.local>
References: <20150708144853.GE10457@w1.fi>
 <20150816131953.GA32445@pisco.westfalen.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150816131953.GA32445@pisco.westfalen.local>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] hostapd/wpa_supplicant - Incomplete WPS and P2P
 NFC NDEF record payload length validation

Hi,

On Sun, Aug 16, 2015 at 03:19:53PM +0200, Moritz Muehlenhoff wrote:
> Hi,
> This doesn't seem to have received a CVE assignment, explicitly
> adding cve-assign to CC.
> 
> Cheers,
>         Moritz
> 
> On Wed, Jul 08, 2015 at 05:48:53PM +0300, Jouni Malinen wrote:
> > Incomplete WPS and P2P NFC NDEF record payload length validation
> > 
> > Published: July 8, 2015
> > The latest version available from: http://w1.fi/security/2015-5/
[...]

Can a CVE be assigned for the hostapd/wpa_supplicant issue from
http://w1.fi/security/2015-5/ as well?

Regards,
Salvatore
