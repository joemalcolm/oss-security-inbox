X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["621" "Thursday" "24" "December" "2020" "21:13:09" "-0500" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8ngRsZP4qinC_ccQQpQg=B3wVD8udxsj1nxxFVaBbc5iA@mail.gmail.com>" "17" "[oss-security] More CVE request experience (Fwd: Automatic reply: [EXT] Need a CVE for Crypto++)" nil nil nil "12" "2020122502:13:09" "[oss-security] More CVE request experience (Fwd: Automatic reply: [EXT] Need a CVE for Crypto++)" (number mark "U       noloader@gma Dec 24   17/621   " thread-indent "\"[oss-security] More CVE request experience (Fwd: Automatic reply: [EXT] Need a CVE for Crypto++)\"\n") "<abd5c3b2603941979177dc52df904e7c@BL0PR0901MB4209.namprd09.prod.outlook.com>" ("<10504_1608861753_5FE54838_10504_2206_1_CAH8yC8nhmrWpjviy957HFdTBAs2jZFS634FnOWug7rRbB1SDmA@mail.gmail.com>" "<abd5c3b2603941979177dc52df904e7c@BL0PR0901MB4209.namprd09.prod.outlook.com>") nil nil nil nil nil nil nil "[oss-security] More CVE request experience (Fwd: Automatic reply: [EXT] Need a CVE for Crypto++)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8075 invoked by uid 550); 25 Dec 2020 10:59:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28178 invoked from network); 25 Dec 2020 02:13:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=8jy5EVpfmVRH+3fVVaJwMzdNMBUl+93fsbBa2gEpOFg=;
        b=K19VqamoSju/UvikqeoM/Jkg7jNv0NDip7JwhhRFU0C2d49W8COJT4hLyqs6XLn3YS
         RMsWz0unELrA0s7mLbShP0Tj0OnmBGTliFbs8Q0tRmTkQBVNyFQWdeNW/r5NoucMtYvF
         rWjLIa3V+1pNXrDbUNOoEm05KvFYlRW+oApE31najY2Ps+cSafwLu+J0I4lo9g/7EccF
         McyjqWHtvpGJbzpyyM+ASy3coy5XafNS/kD6WsmyXEF6L4QizNsAdSCrl5hcCRMW6mjg
         X3ssvnokF9tWmh3+SRxngV0CN+0k5v2lgOAL0+po6qvAKuE5sL1BXQx4VOPJ0LJZaeHO
         aqog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:content-transfer-encoding;
        bh=8jy5EVpfmVRH+3fVVaJwMzdNMBUl+93fsbBa2gEpOFg=;
        b=AU8pE+UZKvF8FijvkSxZctMwgPpMj0kDa906AUcDsx9Nx8+328pVU1NUsAmUrXMpSC
         RpH/t7+R+uMfWgcEY96YfWmdFOf2oOJYfOuonnGgGEIkwJSP9oq3jWCfdu+sGEeH5hZv
         OoJ0jI9kbcJtMkDF9boKJ544NkQmYNzyxiacMjhFkM+e2Fflyz9c8WYA/UvU/3mksxxn
         suXf3np0kWZnKd/c2IZmc5MJhce1nTbNdsgtye7vlLoLBn6VsRs1hvly645ctyhKOy0z
         t5+qInHw0OZnIaxO1YvDeYbwFZhO19kbwa6ZeRIh4ztC0BbLqo0BrHm7um4T7TGSK6lV
         siyQ==
X-Gm-Message-State: AOAM531QgJ2h0wP17x/Zagr6DT+9xFSxoNj7fGgTWi6/ph/QNRU3R4g/
	ZC+lp9+YUMSgIilV9HjVpwsgHDPfcKj4aIH2psm3OJy3CNc=
X-Google-Smtp-Source: ABdhPJzbTIFJF+LB9FTHfVe5pw4KmaxD5T8f3qs7F4mzz/1DXIoB7xFFf3slGwtIvx+4qv/GvzxQ7wInqmpKBTvqXFY=
X-Received: by 2002:a05:6602:1492:: with SMTP id a18mr27087505iow.124.1608862413318;
 Thu, 24 Dec 2020 18:13:33 -0800 (PST)
MIME-Version: 1.0
References: <10504_1608861753_5FE54838_10504_2206_1_CAH8yC8nhmrWpjviy957HFdTBAs2jZFS634FnOWug7rRbB1SDmA@mail.gmail.com>
 <abd5c3b2603941979177dc52df904e7c@BL0PR0901MB4209.namprd09.prod.outlook.com>
In-Reply-To: <abd5c3b2603941979177dc52df904e7c@BL0PR0901MB4209.namprd09.prod.outlook.com>
From: Jeffrey Walton <noloader@gmail.com>
Date: Thu, 24 Dec 2020 21:13:09 -0500
Message-ID: <CAH8yC8ngRsZP4qinC_ccQQpQg=B3wVD8udxsj1nxxFVaBbc5iA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] More CVE request experience (Fwd: Automatic reply: [EXT] Need a CVE for Crypto++)

The form at https://cveform.mitre.org/ is broken. Emailing
cve@mitre.org for a CVE assignment after the failed web submission
results in this.

I hope people do not see the drop in CVE submissions as an improvement
in software quality.

---------- Forwarded message ---------
From: Common Vulnerabilities & Exposures <cve@mitre.org>
Date: Thu, Dec 24, 2020 at 9:08 PM
Subject: Automatic reply: [EXT] Need a CVE for Crypto++
To: Walton, Jeffrey <noloader@gmail.com>

This email address is not monitored.

To contact the CVE Program, use https://cveform.mitre.org and choose
=E2=80=9COther=E2=80=9D from the dropdown menu.
