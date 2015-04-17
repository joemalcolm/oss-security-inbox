X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["651" "Friday" "17" "April" "2015" "14:50:32" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkKibZ5LixkHx5PB6L3H5Xc6rJSSniFHo39Ewxwt=UGjqw@mail.gmail.com>" "21" "[oss-security] Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041721:50:32" "[oss-security] Problems in automatic crash analysis frameworks" (number mark "        taviso@googl Apr 17   21/651   " thread-indent "\"[oss-security] Problems in automatic crash analysis frameworks\"\n") "<CANtF8NBuiE+1F65+cLp0CXivZUiYxyJcZK2Yhz9J1qu0hCdC9w@mail.gmail.com>" ("<CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>" "<55315C2B.6050207@redhat.com>" "<CANtF8NBuiE+1F65+cLp0CXivZUiYxyJcZK2Yhz9J1qu0hCdC9w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3896 invoked by uid 550); 17 Apr 2015 21:50:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3874 invoked from network); 17 Apr 2015 21:50:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=d65+SwSwGpdnyY8+MSH4fb4+NzT+hovIaynEl6OC/DQ=;
        b=CpTlpxZw/qQd4cOA8mw/cCiW2qe1ptugqoY+WMbDe5o8gPd9s0tw5w8nKNEMfvyVSp
         C5JqgG33tVwpARPY4E2zgEeToLoGYob43KAjR1uEJMSntcMrDgQKn0cL6WnSrreELzO8
         29HzSIZGmHldZWM5qKwAw54sBqIbKt24P9oa7vBt6vq7CzmUH1o30Lg3ZJrfE0yxqFy9
         cscQkgawlfy1StbWftHkSFJM90PWQ9dDb8HHj8b44iy82w6Zbf0mDlY0tJ614tZ4bSJc
         FdEKI1WoHrloZwgA80/a3KJ1dUa71cmX/UpnijYWxYc70cStf6hnRh8v8BgMA0k6RpbM
         r+9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=d65+SwSwGpdnyY8+MSH4fb4+NzT+hovIaynEl6OC/DQ=;
        b=MBkFUp70+iamatf+/5fMjDBNahlH2V5XMbSAfSqSvMMkg7mcN4CYwwZkk9Qa7aZZb7
         K/dNS8OcHh+rVXCq017fRhPW+po5GpnVctS/W+Ema116D77/o7iqGChJEIhiEgX684Vh
         /7mGLQhSc4QcwHApEBrG9ZPzx85vPRRNGTU/UWsdg6/8nE79KRigxRccpWTJlVLpGuI7
         zUHJynvO8DIrR1z5jhCyC6kzOPWdurrIxwPIP/7Ys4eFXx7EbLV4cm7R1QwB4iDE92FY
         7yMamXNq1/zyvqnpVmz+NXU49tKxApzBupFdQelZOH2UYdzisHcFYEsZQqoqejKld6Xp
         qr8Q==
X-Gm-Message-State: ALoCoQktGFOsj2EBZeheysf/W3WsfNkGLdQhW5oq/sgMeczzvTrJIyhQ+GbpszwgKDiMiYS1zBak
MIME-Version: 1.0
X-Received: by 10.55.53.137 with SMTP id c131mr9723309qka.102.1429307432728;
 Fri, 17 Apr 2015 14:50:32 -0700 (PDT)
In-Reply-To: <CANtF8NBuiE+1F65+cLp0CXivZUiYxyJcZK2Yhz9J1qu0hCdC9w@mail.gmail.com>
References: <CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>
	<55315C2B.6050207@redhat.com>
	<CANtF8NBuiE+1F65+cLp0CXivZUiYxyJcZK2Yhz9J1qu0hCdC9w@mail.gmail.com>
Message-ID: <CAJ_zFkKibZ5LixkHx5PB6L3H5Xc6rJSSniFHo39Ewxwt=UGjqw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11476f56cdb0770513f291a1
Date: Fri, 17 Apr 2015 14:50:32 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Problems in automatic crash analysis frameworks
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--001a11476f56cdb0770513f291a1
Content-Type: text/plain; charset=UTF-8

On Fri, Apr 17, 2015 at 1:54 PM, Grandma Eubanks <tborland1@gmail.com>
wrote:
> Just to enter into the fray, I reported a simple dmesg_restrict bypass and
> found a lot of these recent more recent 'information' disclosures a while
> ago with minimal changes:
>
> https://bugzilla.redhat.com/show_bug.cgi?id=1128400
>

Ugh, definitely needs to be fixed.

I've been waiting for some commits before I look any further, as I don't
know if each issue is going to be addressed individually or if some
rearchitecturing will resolve everything.

Tavis.

--001a11476f56cdb0770513f291a1--
