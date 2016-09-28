X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["579" "Wednesday" "28" "September" "2016" "23:35:43" "+0200" "Albert Astals Cid" "aacid@kde.org" "<122945095.MCtYvXDq6T@xps>" "16" "[oss-security] kdesu vulnerability: need CVE" "^Cc:" nil nil "9" "2016092821:35:43" "[oss-security] kdesu vulnerability: need CVE" (number mark "        aacid@kde.or Sep 28   16/579   " thread-indent "\"[oss-security] kdesu vulnerability: need CVE\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13528 invoked by uid 550); 29 Sep 2016 03:13:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13930 invoked from network); 28 Sep 2016 21:35:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:from:to:cc:subject:date:message-id:user-agent:mime-version
         :content-transfer-encoding;
        bh=T3KDoTLd4ezGEz7ryWM0/oV8PFV7+YgO7RkaAWzVGc8=;
        b=mAy++uBMoGuEmHT5IOVxAYpQwdeghiFswzn+jmbgrBB4U38/sUPDLMSD8ybI67d6KL
         3cujl9I+rkRc48HuFO5SFkEJj2LSYY7Cfbt3j0+Qd3DjGd50K/XzyFuziqbsGikPPZcc
         O5RW39h/kYqtTbT6kinZ6uXICVzXRB/rZrxs930+fQ4kMHy972drG/jbu7lwj39ivp3E
         g9aAQgZHXQMztQGte2KCTFKPvuB7MNu2+CbX8f6TPxr+C9WS1/95JTa4F0RsmihZRn7W
         Vi/I3J/pAQXAAw0mQ0MPgbZmMo4v9vT7eSpftG+h13a86sw0bhvb35cjczq7pG3ovKuH
         lBzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :user-agent:mime-version:content-transfer-encoding;
        bh=T3KDoTLd4ezGEz7ryWM0/oV8PFV7+YgO7RkaAWzVGc8=;
        b=bnJLh3p9zG0ozKnoCuz69MqnJrHEahGzlOVSeYts3CjFL9DOECB4y5b4n0dyNZnRMh
         dDEWDoJFpKGHe6wvA/r9KCbd3o0b3fcjEUJdl3lrnYEIZ9eoZYLTASPYm05JgOITzKfz
         +x4lKWwoJbZu9tz4VB07XvL2Z+wD8jAHnYJdjrF7dW6DS6upceL3+YdJ25iW+Byj9Hg1
         aLW8LICuT92cs47M/ZGOs2kAnfcJurdCOIJwYbjQW1FRErVj/1TVMEFs2L9+tSBaqYbN
         YPnHITiz6u6FmKiD9rxXGajb/RhdqmmVqRT7MbDxpzIa37DVfMyjNWK8Wygrzqo8raP3
         ptWw==
X-Gm-Message-State: AA6/9RkUXgfS2xcKyNqa9jKj5xA1E1gom4bvJ36HRCzidQqZFzlh7/NTowwtiE1T8AvEtA==
X-Received: by 10.28.113.16 with SMTP id m16mr9464001wmc.29.1475098544998;
        Wed, 28 Sep 2016 14:35:44 -0700 (PDT)
Message-ID: <122945095.MCtYvXDq6T@xps>
User-Agent: KMail/5.1.3 (Linux/4.8.0-17-generic; KDE/5.24.0; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: CVE Assignments MITRE <cve-assign@mitre.org>, security@kde.org
Date: Wed, 28 Sep 2016 23:35:43 +0200
From: Albert Astals Cid <aacid@kde.org>
Reply-To: oss-security@lists.openwall.com
Sender: Albert Astals Cid <tsdgeos@gmail.com>
Subject: [oss-security] kdesu vulnerability: need CVE
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi, Albert from KDE, can we get a CVE assigned for kdesu?

The problem is that you could sneak an unicode string terminator in the kdesu invocation
and the label showing which command will be executed ended there but we did execute the whole thing,
that is,
  
   echo Hi@; whoami > /tmp/filebyroot

If @ is the unicode string terminator would only tell the user kdesu would execute "echo Hi"
but would create the /tmp/filebyroot file as root

The fix is already available at
https://github.com/KDE/kde-cli-tools/commit/5eda179a099ba68a20dc21dc0da63e85a565a171

Thanks,
  Albert
