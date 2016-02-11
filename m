X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["435" "Thursday" "11" "February" "2016" "10:45:48" "-0500" "David Leo" "httpsonly.github.io@gmail.com" "<CAAeBhPdgWqsUJStCLLt+dgfHjsP=fUyc75L4ME3de4M_ctu8JQ@mail.gmail.com>" "19" "[oss-security] HTTPS Only (Open Source, Python)" "^Date:" nil nil "2" "2016021115:45:48" "[oss-security] HTTPS Only (Open Source, Python)" (number mark "        httpsonly.gi Feb 11   19/435   " thread-indent "\"[oss-security] HTTPS Only (Open Source, Python)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14165 invoked by uid 550); 11 Feb 2016 15:52:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9758 invoked from network); 11 Feb 2016 15:45:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=ijH9vymQ3UOTTz6lLQjdDHGj7BovPHao2SVsxRn7Sgo=;
        b=rmqznL41o5aUds5dnOCbNQskbvPuAiTiq9pgzZrPkLPSGp6Kp8gTbmez56wKt4y61a
         7YSjUvpwXPNO9zmkGOUkOftepUkZEVWemwI8TFCMwPBn3IcjBDTNivUj2GJgxWRO4/Na
         x2MPpytZhG5j27Et2CHLHBhjLyNje71Zn1KSh2al5a9D+CMxDZUKItHRmMgHs5jcqVeR
         lHci9g2saapRz8+RanVXMUJVVZe/Rt28muyOaPGXXOTZ2OuWNybW9CKqVSW3qrHDJ/7e
         mTOx8MGkCngXKWXs3UdsfHUv3nQmWYVYPSppYiXQ9ELxtoZipC9UEL35nQooGRaOWJog
         +DZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=ijH9vymQ3UOTTz6lLQjdDHGj7BovPHao2SVsxRn7Sgo=;
        b=lip6UF6+AjeQOnmwt+eePDhz/5Rg0Z5+5CH8O3uAeS+0+tXi1BXYXdBlPJvimPhLi8
         lHNt+7hBldk6zzhhajndTwoEj067HYViA6OkNlBnYPBdNCtNMSuuaiyyI55ZKOKYWCGA
         urtFjytJcmWPwFSJnUR0zjZUe+EcPVjIZYnmXcZlgjHhhdYAN1QC6cZtWpin+JGKTRSs
         bz6v27fGHJ4b/3edOjHvTiOfo7PpO9pXYcvCDDDQBn1VtDGWgjKmWVj0zgSTm673rqUs
         SZvgTf4VR88HyFXxZU32dfOK74KqKRcyj80Nb2iSVH7KMM87QdFwfv/QOh/NQzGoF5kX
         PB2g==
X-Gm-Message-State: AG10YOSyCzkJo8keE6gxOaBrf6BAiTTWUR8XUQxeg8SKyJ7T1WdtHolcNzZG3w/pQAXzPRZTCI8pIaCzyq1djA==
MIME-Version: 1.0
X-Received: by 10.25.163.73 with SMTP id m70mr19536162lfe.20.1455205548100;
 Thu, 11 Feb 2016 07:45:48 -0800 (PST)
Message-ID: <CAAeBhPdgWqsUJStCLLt+dgfHjsP=fUyc75L4ME3de4M_ctu8JQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Thu, 11 Feb 2016 10:45:48 -0500
From: David Leo <httpsonly.github.io@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] HTTPS Only (Open Source, Python)
To: bugtraq@securityfocus.com, fulldisclosure@seclists.org, 
	oss-security@lists.openwall.com

This tool completely locks browser:
just HTTPS, nothing else.

This tool is extremely simple:
less than 100 lines of code(Python and JavaScript).

If browser tries to access HTTP address,
you will have three options:
try HTTPS,
Google Cache,
or copy-and-paste the address.

There is no option to "temporarily bypass HTTPS Only".
You can always do that in another browser.

Project Home Page:
https://httpsonly.github.io/

Best Wishes,
