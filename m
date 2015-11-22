X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["705" "Sunday" "22" "November" "2015" "15:51:04" "-0500" "Fried Wil" "wilfried.pascault@gmail.com" "<CANTwUcpgTHHuUzvNJGfWu3e4ido05BjFGjcM6QDkX0CVXBnd2g@mail.gmail.com>" "29" "Re: [oss-security] CVE-2015-5257 - Weak Randomization of BridgeSecret for Apache Cordova Android" nil nil nil "11" "2015112220:51:04" "[oss-security] CVE-2015-5257 - Weak Randomization of BridgeSecret for Apache Cordova Android" (number mark "U       wilfried.pas Nov 22   29/705   " thread-indent "\"Re: [oss-security] CVE-2015-5257 - Weak Randomization of BridgeSecret for Apache Cordova Android\"\n") "<20151122175003.GA13876@eldamar.local>" ("<CAOBL_k7wfgXxa946QuVcyPk9J5LoOgFNNhQZVXY9YRoQi_0J=g@mail.gmail.com>" "<20151122175003.GA13876@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11429 invoked by uid 550); 22 Nov 2015 23:35:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18380 invoked from network); 22 Nov 2015 20:51:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=suDB1Ma6Fh1DBQDgI49mNDxIOZfnKYymEOTqn/iIZt4=;
        b=uiKok3tFYf+QRBXDBjq4dSQbjdwJFXffOlfsvLCPh+dQfkVwSeh9X/EXkjIceWlnAE
         UkpUZYc/xsR4Hp/iLtW7GpW4NwK3tboFusJXUWOjIvFQowqyZNeKKHkQ4agxUPVS4lS8
         UsmqeVpY5kP/iagkTbzD8Z31Q4qIACDPxhjGDE4qjaJAu1IN491FccAuE8VvH7Lsa0KU
         4oVuH9mFpeH4AlZlXE1PWN31zTBD++vYusatgsyAuSnCeR9acl4sKu9yw0gKCgjBXCPt
         Pb/o1ZLtOIzU0+cDNus7XnvuM51iD2zamrlvB5eCLaxwGF5tU7L5fXp6O/VcfcDgsdFV
         tH7w==
MIME-Version: 1.0
X-Received: by 10.140.109.100 with SMTP id k91mr24286658qgf.23.1448225464058;
 Sun, 22 Nov 2015 12:51:04 -0800 (PST)
In-Reply-To: <20151122175003.GA13876@eldamar.local>
References: <CAOBL_k7wfgXxa946QuVcyPk9J5LoOgFNNhQZVXY9YRoQi_0J=g@mail.gmail.com>
	<20151122175003.GA13876@eldamar.local>
Date: Sun, 22 Nov 2015 15:51:04 -0500
Message-ID: <CANTwUcpgTHHuUzvNJGfWu3e4ido05BjFGjcM6QDkX0CVXBnd2g@mail.gmail.com>
From: Fried Wil <wilfried.pascault@gmail.com>
To: oss-security@lists.openwall.com
Cc: CVE Assignments MITRE <cve-assign@mitre.org>, DAVIDKA@il.ibm.com, Roee Hay <ROEEH@il.ibm.com>, 
	"private@cordova.apache.org" <private@cordova.apache.org>, dev <dev@cordova.apache.org>, 
	"security@apache.org" <security@apache.org>, bugtraq@securityfocus.com
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] CVE-2015-5257 - Weak Randomization of BridgeSecret
 for Apache Cordova Android

Hi,
yes, agree with Savatore.

I sent an email to MITRE yesterday about this.

Regards,

On Sun, Nov 22, 2015 at 12:50 PM, Salvatore Bonaccorso
<carnil@debian.org> wrote:
> Hi,
>
> Adding MITRE team to recipients.
>
> On Fri, Nov 20, 2015 at 11:39:56AM -0800, Joe Bowser wrote:
>> ===================================================================
>> CVE-2015-5257: Weak Randomization of BridgeSecret for Apache Cordova Android
>
> Is there a typo here? CVE-2015-5257 was already assigned for an issue
> in drivers/usb/serial/whiteheat.c in the Linux kernel. see
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-5257
>
> Regards,
> Salvatore



-- 
Wilfried Pascault
wilfried.pascault@gmail.com
