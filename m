X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["294" "Thursday" "29" "September" "2016" "13:00:23" "-0400" "Mike Kienenberger" "mkienenb@gmail.com" "<CAM1yOjaPOgtTyEu9+H2eJGCqQS_95DqmyavAyvBUguWM-binYw@mail.gmail.com>" "5" "[oss-security] Re: CVE-2016-5019: MyFaces Trinidad view state deserialization security vulnerability" nil nil nil "9" "2016092917:00:23" "[oss-security] Re: CVE-2016-5019: MyFaces Trinidad view state deserialization security vulnerability" (number mark "U       mkienenb@gma Sep 29    5/294   " thread-indent "\"[oss-security] Re: CVE-2016-5019: MyFaces Trinidad view state deserialization security vulnerability\"\n") "<CAM1yOjZV28=4LFjZtYWPB5W6HXRzxVttU2eXaUzCfUyLakN4Zg@mail.gmail.com>" ("<CAM1yOjZV28=4LFjZtYWPB5W6HXRzxVttU2eXaUzCfUyLakN4Zg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31924 invoked by uid 550); 29 Sep 2016 17:03:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30228 invoked from network); 29 Sep 2016 17:00:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=jfPX/ufOWw8OATv/n333CKXVEAUbniJ413Zo8xgWQwI=;
        b=EAtGYwOFnPrVNYexoZsTTXHNexiO0NR0cRLWLTEj8A1mzAV2SENEplxuHz8grZonCt
         Qxbzy/nJOnXodK2LSbg6tx3ZnlqUMisRBJq8LArHp9AWOdyl1V2hamp4uHE4cjscJMnK
         pVJtJxwZOEcG8tTOfylLVq2ASMIVmUugd3suGv/aojY218M0Xv66snMBw4uOZzFDvmiG
         UTz0LuaE8srRI/E/rDOyLlOD+fH9KyHz0k1yb8JxfdpcXgeuQ/dLRTnBdG8q40S1vs1J
         b54H5tYdt7maNTnoDmTF/Mj/b2aH7xUaRVJwmsctDCPa/QsTdVTQhpTTN5/36Dk9/Q8V
         liOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=jfPX/ufOWw8OATv/n333CKXVEAUbniJ413Zo8xgWQwI=;
        b=kBhzI/pv5SJKNGlCaLNW0krS5YDs1JRoUijCMiRmIHdYKrSlSHhZ1JaN3PtyXvVm5t
         YPDoppBHMXeAPWCTMJcCXN2M8WvwhoRoe5eAwGmKSvhT+LcB8rFktYwCAMoCTuc/at5n
         w/Yk5wQziEZscIeozn9Gkw1VoUTdazeSrd9bNUAUb++bHnEanDuGOcACg6Jt9Wx9dSel
         70KZ/uZ116JPhH/x70+PbZ6jYy55weN0/gKHeXnRsOU09vqDRnnWwOx+JwzQiP1jSie7
         mK/qolS/SecW5Yqvq/fl5fxB1A+0YxE6JXaevrBDiSfA5SCGNeg0InrdWhCsGfjKL107
         ePGA==
X-Gm-Message-State: AA6/9RnLnLaKapydX2EijLF+pJ9v1bdJUQKtPKNFH0SBqOFgbTWNC7VFWmLb986pA9s+HBoD/EetZsBDvQHX7Q==
X-Received: by 10.202.51.8 with SMTP id z8mr2251049oiz.76.1475168443833; Thu,
 29 Sep 2016 10:00:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAM1yOjZV28=4LFjZtYWPB5W6HXRzxVttU2eXaUzCfUyLakN4Zg@mail.gmail.com>
References: <CAM1yOjZV28=4LFjZtYWPB5W6HXRzxVttU2eXaUzCfUyLakN4Zg@mail.gmail.com>
From: Mike Kienenberger <mkienenb@gmail.com>
Date: Thu, 29 Sep 2016 13:00:23 -0400
Message-ID: <CAM1yOjaPOgtTyEu9+H2eJGCqQS_95DqmyavAyvBUguWM-binYw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: "security@apache.org" <security@apache.org>
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Re: CVE-2016-5019: MyFaces Trinidad view state deserialization
 security vulnerability

Clarification: The first line in this CVE was a copy&paste error
during message composition and is not part of the CVE.  This line can
make it sound as if CVE-2016-5019 is only an information disclosure
vulnerability rather than a deserialization attack vector.  I
apologize for the confusion.
