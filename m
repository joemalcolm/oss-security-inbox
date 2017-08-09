X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["260" "Wednesday" "9" "August" "2017" "08:18:54" "-0400" "Glenn Randers-Pehrson" "glennrp@gmail.com" "<CA+PdXcvm1e3zS6uWy-hRs1Sg+RevsbY5kV0X16_sKwS6DxRnxQ@mail.gmail.com>" "8" "Re: [oss-security] Cve issue discussion" nil nil nil "8" "2017080912:18:54" "[oss-security] Cve issue discussion" (number mark "U       glennrp@gmai Aug  9    8/260   " thread-indent "\"Re: [oss-security] Cve issue discussion\"\n") "<SG2PR0401MB18348536139981B099234273888B0@SG2PR0401MB1834.apcprd04.prod.outlook.com>" ("<SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>" "<6651351.AxBd7pCpa9@wanheda>" "<SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>" "<CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com>" "<20170807123756.GA27766@suse.de>" "<CA+PdXctggn-AoYVKJQZS=+jbnEga4P2AkJa6OJaAS_GUgw0b_g@mail.gmail.com>" "<c3f3c2ec-aee4-75db-562c-7183fa0e3a29@oracle.com>" "<CA+PdXcuw7YLfhHO8wydX-4yhgmnGxN7fb=b+z+DQsSgV+73Tjg@mail.gmail.com>" "<A1AB11FC-E9D5-421B-BB66-C90AC49C3401@apple.com>" "<CA+PdXcvmTRrks_ZnXB_EyMHdm6ahap9yNHmf4hV5gLwVBoz_Vw@mail.gmail.com>" "<SG2PR0401MB18348536139981B099234273888B0@SG2PR0401MB1834.apcprd04.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29767 invoked by uid 550); 9 Aug 2017 12:19:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29734 invoked from network); 9 Aug 2017 12:19:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=CjarEuiUXSI4Gm0DOVZDYDGPKE84HVncZ0KyIDcF+Oc=;
        b=gwpE3wxq0n2He9AWZsg1t8xzZ3yPXea/L3sAbZG+uX1Upmq7yuCD19FtxZkowWbS7K
         DpMb9UDJ81WG3X9inH6t19vrhSnibKWXc9QXPDlzSBa9uSnDXYg2jkBLxnvhghbLRgAv
         x7t07zmWcgF0B8yLBqIYgIQvtfGOxp8hf1WawwZU+uWFdjWEq8Y9bZWAwZAVU85GrxDF
         XSgGkWPDbKsFPECKPaayDyqiWr5UlXbo6c8qFH5uaw71l4ZnFPdSNbYiWgSFnWL1Y7/7
         X0JYvzF52sVFBl3vCkfN4LoSnktUx//Ywh4CzY8bLWHo45QsR+cfTW1DwGHFjg0c9mc6
         IgSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=CjarEuiUXSI4Gm0DOVZDYDGPKE84HVncZ0KyIDcF+Oc=;
        b=D6RCAAystoY64ObvLrGI43+NHTNTIp5Jvr2NwO+P8hFOV+lajAuSAAhqU7kjbkKHnp
         DT4r/tIyFf3sVIfiQKizo+rWhayjHbOtLXTqmCuuyXpmVJSNrHEFZ3sVZm/1nFVld48C
         eQI3NYX03aGtNEhxVZEyCDqo/1dnIkaj1svvUNplJW/hJmIRh//btm1KIqBoiuT09Moa
         et5BEYPi7aD2HrX3bdqr5nqW9zxMXJN0m9xUK3M+ciGOpRy8ozJo8U6IjPITkppjceup
         NqyDXaAcT6q5pIALRDWOsunCavMy1piuQjbdEMbRW7Gz4XKZMGB58vGqo00QWVoBWItg
         BcUA==
X-Gm-Message-State: AHYfb5heTbTWhHf6IjUNQM/Cdtyb1LvyNUtm1MAUloxoEDY5g3odRcsM
	RjaS4ZWAjantKSMX9zUDjYOOmhUmPw==
X-Received: by 10.36.181.23 with SMTP id v23mr6280680ite.163.1502281175211;
 Wed, 09 Aug 2017 05:19:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <SG2PR0401MB18348536139981B099234273888B0@SG2PR0401MB1834.apcprd04.prod.outlook.com>
References: <SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
 <6651351.AxBd7pCpa9@wanheda> <SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
 <CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com>
 <20170807123756.GA27766@suse.de> <CA+PdXctggn-AoYVKJQZS=+jbnEga4P2AkJa6OJaAS_GUgw0b_g@mail.gmail.com>
 <c3f3c2ec-aee4-75db-562c-7183fa0e3a29@oracle.com> <CA+PdXcuw7YLfhHO8wydX-4yhgmnGxN7fb=b+z+DQsSgV+73Tjg@mail.gmail.com>
 <A1AB11FC-E9D5-421B-BB66-C90AC49C3401@apple.com> <CA+PdXcvmTRrks_ZnXB_EyMHdm6ahap9yNHmf4hV5gLwVBoz_Vw@mail.gmail.com>
 <SG2PR0401MB18348536139981B099234273888B0@SG2PR0401MB1834.apcprd04.prod.outlook.com>
From: Glenn Randers-Pehrson <glennrp@gmail.com>
Date: Wed, 9 Aug 2017 08:18:54 -0400
Message-ID: <CA+PdXcvm1e3zS6uWy-hRs1Sg+RevsbY5kV0X16_sKwS6DxRnxQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Cve issue discussion

On Wed, Aug 9, 2017 at 3:49 AM, ne xo <nexo123@outlook.kr> wrote:
> Most bugs in ASan do not cause crash in non-ASan environments.
>
> You should check with the valgrind tool.

That's what I do.

Valgrind exhibited the large memory request but did it quickly.
