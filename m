Received: (qmail 28397 invoked by uid 550); 30 May 2024 11:45:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20262 invoked from network); 30 May 2024 09:18:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717060706; x=1717665506; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PqR2grkG5bZUNU5daYDKqaSYBycqO+yzPHB1JXg5zO4=;
        b=g/zKo/ULYozp98hA8Es4r5SLkF/HZtvewypUAYBnZP0nWHmh1ER283gUOE+kfMa0Lu
         tQ+FPXybouAi6Xwuh0zdG/ZxAFS03PwU8ZLxJ42E6xVwwwNtPlXWCjLuMhUruiWXjfsm
         Xn4waKD/bEGA/SNaGeEXbNJECY2NqcGwKf3td+G3NzTiY3w+sZpGChXc/XI4Om4PCkGd
         pF8+iRzZMm1lB6eQptOaPmUe7+/SnKJdAi/RElIY+/+Q8eUkII4FcbYNGhvpJw0MCx8g
         uYfF3hv/YPudIykAExtStKIWZyk5BkbLGgXC+LxADkAYQvw28qK8n7fD6ZPwmLNIjQj5
         3hHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717060706; x=1717665506;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PqR2grkG5bZUNU5daYDKqaSYBycqO+yzPHB1JXg5zO4=;
        b=Vk1EBN6zJn7PqoHyr7IUkoClj+Dh9Iy3WczPMK2KUbAci7Dh/MFHwCbZCZc+1Lqe7k
         zF/scegoPyHbDkviZ/YyCdHTHMna//H1IzgU3/HXDe+f37kp1BSdpo72Elg22ZgJDKZw
         24gWsDkkW+/REwnjuLoCo4UWdSV1oU5Mukb/4KBxcC3PhHu/3VYXJryEoAYANju/j0KR
         v0xKm2vfPAxhd0C2ploFDne6ZdjEFKtd4ES5J4/lgWhNqITnOZfryboz15f3rd0fx9Go
         AbBqcE1HKf2AotJ9XD/5JznRBQsZEoj9ivjv2FXIBju36zfnOwMS15ZnNM7LZskyaLsl
         GzPA==
X-Gm-Message-State: AOJu0YwJ254G9YXlSNhlLqr02WhHGRBIpK5ebZImpq4Qf2oHV3ivubIw
	dmxR7SIqI35phJixuOa1YKPgprmkeRhl+qPM0vWYwyGhxwJ9UdXQonHXF6A6lZnITx0TeBQcK3Q
	ICFsE28u171Auyts2t4WuLqfyDEXu3Ikj
X-Google-Smtp-Source: AGHT+IGZzKvGUjmfFhjiBlOz3GqFDnDTQ4X1y+ZwxAYqGqCfY7gTeILGjO4y2rHt5eig4Emd6AEBqq+/IXTnTfaj+I8=
X-Received: by 2002:a05:6122:c9d:b0:4c9:b8a8:78d4 with SMTP id
 71dfb90a1353d-4eaf216858cmr1582823e0c.3.1717060706336; Thu, 30 May 2024
 02:18:26 -0700 (PDT)
MIME-Version: 1.0
References: <CACVjhxWPjerPGKeJ=4ynPuJVH2E4nYGEt+cBaHhjqhS5=Fq+2w@mail.gmail.com>
 <CACVjhxVQm2LLSopp6CzXAjGaHFqtKWO=64oGvNcU43MuSwrB1w@mail.gmail.com>
In-Reply-To: <CACVjhxVQm2LLSopp6CzXAjGaHFqtKWO=64oGvNcU43MuSwrB1w@mail.gmail.com>
From: Yaron Shahrabani <sh.yaron@gmail.com>
Date: Thu, 30 May 2024 12:18:00 +0300
Message-ID: <CACVjhxUD21YUHf4ZMCqO_qzXT93p5ukSW6sKANvzDzxuXqaZCg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Security vulnerability in fprintd

Hi everyone, I'm writing to this mailing list since I've already
shared the details with Benjamin Berg and Marco Trevisan privately,
and we have yet to conclude about this vulnerability.
This information was also disclosed to the fprintd mailing list:
https://lists.freedesktop.org/archives/fprint/2024-May/001231.html

My sudo is configured to approve access with pam_fprintd; this is the
config file:

#%PAM-1.0

auth            sufficient      pam_fprintd.so
auth            include         system-auth
account         include         system-auth
session         include         system-auth

So, unless I'm not already authenticated, running the following command:
sudo whoami
Replies with the following prompt:
Place your finger on the fingerprint reader

Placing my finger on the fingerprint reader leads to the following output:
root

The security concern is that this process can also happen behind the
scenes, so if I'm running a script that has a sudo prompt to delete
something I care about, I can accidentally place my fingerprint on the
fingerprint reader for any other reasons, and my beloved files will be
removed.

How do we recreate the issue?
You can open your favorite console app on Linux.
If it supports tabs open two tabs, if not just open another window.
On the first tab, type: sudo whoami
Switch to the second tab and type: echo Place your finger on the
fingerprint reader;cat
Place your fingerprint on the fingerprint reader
Return to the first tab (You should see that the command was approved
and the output is root)

Assume the user was running some background process and didn't see the
fingerprint prompt from the other terminal. The second terminal may
deceive the user into placing the finger on the fingerprint reader and
elevating permissions without the user being fully aware.

On Ubuntu, if I want to recreate the same configuration, all I have to
do is enroll my fingerprints in System Settings,
then install the pam-auth-update and select the Fingerprint
authentication from the selection screen (apt specific) as described
in the following SO thread:
https://askubuntu.com/questions/1015416/use-fingerprint-authentication-not-only-for-login.

This problem was solved in macOS by simply displaying a window; if the
window is out of focus, the fingerprint won't work.
Since we can't rely on any graphical window on Linux since it can be
terminal only, we need to ensure that the user fingerprint is used
only for the sole purpose of the request and with full attention to
the specific action the fingerprint was requested for. Otherwise, the
fingerprint can be hijacked (just like clickjacking).

Benjamin was kind enough to respond, and I allowed myself to summarize
his reply:
It can happen with fprintd as with any other external authentication
method (aside from password, we have Bluetooth proximity, NFC Tag,
Smart Card, etc.), so it is not unique to fprintd.
Benjamin also offered mitigating ways, such as changing the
configuration or using pkexec instead of sudo.

I addressed this issue with the sudo maintainer, Todd C. Miller, and
again, I allowed myself to summarize his response:
Although I understand the concern, I need a security attention
mechanism to fix it.

CVSS 4.0 ranked this CVE as 7.3.

Thank you,
PS, I'm not a security researcher, and I'm not affiliated with any organization.

Yaron Shahrabani - DevOps, Hebrew translator
