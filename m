X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["714" "Thursday" "28" "July" "2016" "09:32:34" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160728073234.GA8817@lorien.valinor.li>" "20" "[oss-security] CVE Request: redis: World readable .rediscli_history" "^Date:" nil nil "7" "2016072807:32:34" "[oss-security] CVE Request: redis: World readable .rediscli_history" (number mark "U       carnil@debia Jul 28   20/714   " thread-indent "\"[oss-security] CVE Request: redis: World readable .rediscli_history\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24416 invoked by uid 550); 28 Jul 2016 07:32:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24392 invoked from network); 28 Jul 2016 07:32:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0vz1NaVUbw1tR4I6FVOq2ecDWmQcna+Pw1I6Sk+KwpI=;
        b=w8nuJIGvXqW5DwJfabzOTYFujEgCKnP0gzDuhcunSvNwqP7mXBVZr9uQzOhlUoV2gq
         Xei0wSiTU4sCLu3cY4z/BCex7yz6XR8t6bUM/RB34OIl+pSg4We6djgJPPbT3h7c9G5a
         bCVUC0/676pkD2fJtFoD5lED0JdOinwFqKiy5UtIgP6f8iVTovhkF4eg8hevfe3Ve3d0
         uRV6a/NJQdgYz0dRnh5MO2uMSVVn4Na6jtWXkfbfprqsNdw2zPX1Dr+T2oolGqWt5vjz
         UejV0kejtltvopMmi9IrH8Qjo5YRUWVBYu+fm98TF/ol3KkEPGlnz7cVmKkE6aU7ASDq
         F6nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=0vz1NaVUbw1tR4I6FVOq2ecDWmQcna+Pw1I6Sk+KwpI=;
        b=C3HtkkodpROA7AXCaPoJUpQ3rsj54zHyEJIx5nvxQTxhZw9UyUJ6fGv4ZX98MJ6caW
         tT8loeaFtCYKGl2RqiNOtVKnJv+8NI6rOYQ2waz/Xd+uaaZfoscuN4ms2JyEAdlDc2XW
         yV5h9sf+7I7TY3zW1IYQpOBsJWRC4qAYP4bUfCp6KcJqUi3OtC/qHgRxRxVfciZWYyJZ
         i3FBuzK7V9j6noKInJ7LyOAUFD3hRtcoYt05u7Yd0GNojO09zj6pkCQKAm+AqwrwwVpu
         Vrd5cJzXMZElR2YD/grJ4ttOlk9Hfua/XJt8R5F3mZJyuBMQziBLookNFRj4NpUJ1u2i
         NKMw==
X-Gm-Message-State: AEkoouulnA216p/FJpaBZ5EzyRk4klRGr23Zw5SWXW+XmHZ0BC0eRejVVUi/sd0/Ipf8aA==
X-Received: by 10.194.238.170 with SMTP id vl10mr32189612wjc.18.1469691155678;
        Thu, 28 Jul 2016 00:32:35 -0700 (PDT)
Message-ID: <20160728073234.GA8817@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Thu, 28 Jul 2016 09:32:34 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: redis: World readable .rediscli_history
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

>From the Debian bug report at https://bugs.debian.org/832460:
> redis-cli stores its history in ~/.rediscli_history, this file is
> created with permissions 0644. Home folders are world readable as well
> in debian, so any user can access other users redis history, including
> AUTH commands, which include credentials.
> 
> I've contacted upstream on 2016-05-30 without any reaction at all and
> discovered this bug was first reported 3 years ago, still unfixed.
> @RedisLabs keeps referring to their paid support on twitter.
> 
> Demo: `cat /home/*/.rediscli_history`

Upstream report: https://github.com/antirez/redis/issues/3284

Could you please assign a CVE for this issue in redis?

Regards,
Salvatore
