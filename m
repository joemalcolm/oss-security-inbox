X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["791" "Thursday" "22" "July" "2021" "11:52:05" "+0300" "Georgi Guninski" "gguninski@gmail.com" nil "26" "[oss-security] ipython3 may execute code from the current working directory" nil nil nil "7" nil nil (number mark "U       gguninski@gm Jul 22   26/791   " thread-indent "\"[oss-security] ipython3 may execute code from the current working directory\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] ipython3 may execute code from the current working directory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7843 invoked by uid 550); 22 Jul 2021 10:53:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20048 invoked from network); 22 Jul 2021 08:52:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Aipr+UZEyvnHZTeJbKPc2Z8YQ3Sb3cR1GVteugbfUtg=;
        b=RL7vIDujH5Ll2dbxUixYGxRM6VIBCIO8s23B7AnmmGGZJTSsWr8LwWnD9AyYxBFU79
         CvE4dgO2p3pPWeOIV1j5L4Z+GE936AuphhGZhp/RQT4EShKzqcx5rQ/t33tHTYfhHwkQ
         FR8DR/GJUuSkb4HDVj9cGT0LRP1xYn4FQZx0JHW49zPtkzhJuwZZQExfqsgK0jzJjSm9
         6mtXmuFB8c4TEAPfdT49xN17QM8jo8jxITx0KujabvEwmsWnHSI9h1vMN2MOIjqBH2h9
         83O/a4O7gt+26rRJLZ7k6y9xNITJnaSB5qp0sJAXSksAub0kJYF/v3vPeyPorF0/XAsm
         jKaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Aipr+UZEyvnHZTeJbKPc2Z8YQ3Sb3cR1GVteugbfUtg=;
        b=GFC1P6eXKUX1LDO4X316mitKvNooBEh4g/0DJ3vCuBFKotIiTAY/3iNf60wl1QiUjP
         DimtF3gxH+cYwV4V+/mv9po2RvGSs7PEn+XzRO+x+52HL3awZK/v7yMNusGAiXJNfekl
         AwHq8/tD9brpmhxnrVGpOlkc8GD+slD865U6Rqm/ibE7rWP2A7uXW1N51ZpbqROy+ZYd
         e0UZK6NWl4BSJcOFRXey/A7IMds4NwUOP7vocF6TAnh4HB57Yaxj+B3Ak3HvGlC1Uxks
         8Xm4EZOlKHpiNxn+6Q8CeHrIJavwn/T7TBcBxja8jqDXaA6Or6fbn/sCN66MW7xhOdgN
         54hw==
X-Gm-Message-State: AOAM531KMzu+HpglYrVMPvX1qxQBAzFesHPd6fR3L/L/QnrMrxWt5EVv
	qCvfYl/W6GpetdLPuxTXkPiDNjQrqywKOivy0e7/vhprPfM=
X-Google-Smtp-Source: ABdhPJy2KiRsqYdNWZugnBW0gEfMGRFTmO9hwzz4u9wNc9uWsXWvXDyb1L/FbzHiJ5N4gy0wZCrVPCWF2L9gRLGLx7U=
X-Received: by 2002:a05:600c:4e92:: with SMTP id f18mr7933649wmq.62.1626943936395;
 Thu, 22 Jul 2021 01:52:16 -0700 (PDT)
MIME-Version: 1.0
From: Georgi Guninski <gguninski@gmail.com>
Date: Thu, 22 Jul 2021 11:52:05 +0300
Message-ID: <CAGUWgD9MsQts5_jV9=nr8X6mwZyW-NU2JzYnosdMqQ0G06nH6w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] ipython3 may execute code from the current working directory

Summary: under certain circumstances, ipython3 may execute
code from the current working directory. This might be a
problem if the current working directory is not trusted.

python3 is safe.

Tested on ubuntu 20.

The following session illustrates it:

joro@bialokote:~/tests/dir2$ pwd
/home/joro/tests/dir2
joro@bialokote:~/tests/dir2$ ipython3 --version
7.13.0
joro@bialokote:~/tests/dir2$ ls ~/tests/dir1
a.py  joro-orig.py  __pycache__
joro@bialokote:~/tests/dir2$ ls ~/tests/dir2
joro.py  __pycache__
joro@bialokote:~/tests/dir2$ cat ~/tests/dir1/a.py
try:  import joro
except:  print("error in import")
joro@bialokote:~/tests/dir2$ cat ~/tests/dir2/joro.py
print("imported joro :)")
joro@bialokote:~/tests/dir2$ ipython3 ~/tests/dir1/a.py
imported joro :)
joro@bialokote:~/tests/dir2$
