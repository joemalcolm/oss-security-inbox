X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1072" "Tuesday" "7" "June" "2016" "09:49:00" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160607074900.GA10065@lorien.valinor.li>" "34" "Re: [oss-security] Please reject duplicate CVE for libxml2" nil nil nil "6" "2016060707:49:00" "[oss-security] Please reject duplicate CVE for libxml2" (number mark "U       carnil@debia Jun  7   34/1072  " thread-indent "\"Re: [oss-security] Please reject duplicate CVE for libxml2\"\n") "<87wpm1wixw.fsf@redhat.com>" ("<87wpm1wixw.fsf@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20431 invoked by uid 550); 7 Jun 2016 07:49:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20411 invoked from network); 7 Jun 2016 07:49:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+qTO+KWjOdJbRVWJ/CCHtKwxDc39iCa2uI4B+G9Z+UI=;
        b=G7QStAsmuVmXKOcAdAmhmHvvbmo6jbqs038rsVsWYmZdc7bR07mKFuyb7L0TjV083t
         JRZexNWOOI4lx8fCl/lIclgvWWRYFb+DyEUNC2sQEh4Ps31JrcZc5KeMwPORKGjoSWb+
         cBsdg6ctyKnqowyqqAXatGyz6f4hQRxRBTgZke0GWhqIywp85QLlfe+LDv13mVBnH9Ob
         0GaOZSmk2BIm9d1zsRLjmnr5bhD32qk53hYL6pbd/JrS2l4pfTQkYDcv+R5q6rynTORu
         OwAK7kn7Kv7p3x7aegUiNXzCI6giisPI4A+V2RJdyd/SxoamYhmktH4b/0tAdYoTqwUi
         1g6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=+qTO+KWjOdJbRVWJ/CCHtKwxDc39iCa2uI4B+G9Z+UI=;
        b=WzpLwJhi3pUfClPTCq/osaexXAO92YsUtDpv7ceEt8oxyVSQpBZP8S8XbO75ZDuxK+
         aJnc8gi9OQK4bjsZ3qBlj/EVXHMzsGduA5ahx0j2oDe9ifctzDuwAuvhTeH/3s+HmX8t
         GddSznBUPLDE8ECPv3jRu65fiybXZXect4vPQyoWr3ISWgFymJZPzDNrocc6MQIR09z3
         RiuZYJy24z1hAHBmCzX119jo+35HJHYcEiyI5RoNdfcu83EvTr7CyNwEmmDBF9q5GGFK
         Z9RJMQ4bL5Hpi7unjIQ+9veojGbokkCKyxkY14SVwhAmsg3TvG7I/xxa9lCwOa44CqsK
         SyLQ==
X-Gm-Message-State: ALyK8tIjf1z/J9YIz57SEGwz7ZntHiFmsgdnLfRWvwPoZGA+NSwyznPia9Mpz4q1K+IZzA==
X-Received: by 10.28.8.17 with SMTP id 17mr1234806wmi.67.1465285744100;
        Tue, 07 Jun 2016 00:49:04 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 7 Jun 2016 09:49:00 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Mitre CVE assign department <cve-assign@mitre.org>
Message-ID: <20160607074900.GA10065@lorien.valinor.li>
References: <87wpm1wixw.fsf@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87wpm1wixw.fsf@redhat.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] Please reject duplicate CVE for libxml2

Hi,

On Tue, Jun 07, 2016 at 09:34:51AM +0200, Martin Prpic wrote:
> Hi, it seems two CVEs were assigned for the same issue in libxml2:
> 
> http://seclists.org/oss-sec/2016/q1/683
> http://seclists.org/oss-sec/2016/q2/214
> 
> Daniel Veillard reported to us that these issues are the same and fixed
> by:
> 
> https://git.gnome.org/browse/libxml2/commit/?id=bdd66182ef53fe1f7209ab6535fda56366bd7ac9
> 
> The upstream bug is:
> 
> https://bugzilla.gnome.org/show_bug.cgi?id=762100
> 
> Can CVE-2016-4483 please be rejected as a duplicate of CVE-2016-3627?

What though is confusing is that the two commits are tagged
accordingly in the upstream git repository:

Tagged for CVE-2016-4483:
https://git.gnome.org/browse/libxml2/commit/?id=c97750d11bb8b6f3303e7131fe526a61ac65bcfd

Tagged for CVE-2016-3627:
https://git.gnome.org/browse/libxml2/commit/?id=bdd66182ef53fe1f7209ab6535fda56366bd7ac9

For the updates in Debian thus we have used both and referenced both
CVEs, think Ubuntu has done the same in USN 2994
(http://www.ubuntu.com/usn/usn-2994-1/)

Regards,
Salvatore
