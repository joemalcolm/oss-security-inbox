X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["305" "Monday" "1" "February" "2016" "12:00:04" "+0800" "Lucas Leong" "wmliang.tw@gmail.com" "<CAFC7fYSmWcbfC+puEU7gxS+6+o3pfaQUoTCCef3jm9D-8rWc2g@mail.gmail.com>" "13" "[oss-security] CVE Request: FFmpeg issue" "^Date:" nil nil "2" "2016020104:00:04" "[oss-security] CVE Request: FFmpeg issue" (number mark "        wmliang.tw@g Feb  1   13/305   " thread-indent "\"[oss-security] CVE Request: FFmpeg issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11915 invoked by uid 550); 1 Feb 2016 08:50:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18319 invoked from network); 1 Feb 2016 04:00:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:date:message-id:subject:from:to:content-type;
        bh=HyRED28F9W2a8dqYoWdiIpYt8imzVgKl2zYx/+LsLLU=;
        b=Inpx3e4/NwxfJIQo2aky6eXnmHF6AeGcsZuDFmGQO1vpBfjmeo+DNuMRGeJkp1V4VD
         JvSjrfiLnRMxPr91ZE5AihrixQGwDiGE68mWGl6PmP6I5E0pp989UgM+JZQTlx0ftPVW
         NPfkP1w2UP8fCn4CwXW03gQcaOs1Ox0awjmAsj16BfmOpLO9wyMblxg8U4NAbZYqGGgE
         u3lZLJDi+pXL7wV0sIFDfDf+GSMD+hTjQTHJU8TcxvLLXtT+Gtq6QiXjRWDPcYH6hwuz
         xXuXDYXzsqXYYAzhTY9WuOGXpQdL/uokNW6gIdWnP1cPUE1/C8jHwGjSx7Vl+brwkVyt
         9shw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:date:message-id:subject:from
         :to:content-type;
        bh=HyRED28F9W2a8dqYoWdiIpYt8imzVgKl2zYx/+LsLLU=;
        b=K6lJqdn5wkstaQA0ZW1gdwBX4cV2vKTBtRKXJFR0I1/rnt//q6XJFSEtTcwQCYtEWF
         uHV9sv0E+dpS43fgL2y8uRDn4I8lkVWQUHTrLHLyB5AHFt0PbflCGFKe3NKyze706Tgb
         fSD14CSS9MQbFaKuVSg6v/jMHl9Ps9TXa/IjY+ewMZQedwBRrdl3JnShwWnrAiM6+1zz
         CY786crQXl6AnvsW0EEBYkeSfhADZ6KN7ru4HyZMQh7jYKsM+SfHhns2NmiY/YzIOiaE
         bDHLaclole8nHCLGy0dks6QZgO5++0Rpmozz+wb3uzppp+BzTL4w0HCAjSBXITdCFFzj
         Ct4A==
X-Gm-Message-State: AG10YOQT/0XHXWnYSWKKECO/lJWmeDIDwoxAsATdfZ49UkJLM5nwu0Tac1oJFsm4eADdqwxXublthv4a5Y2IkQ==
MIME-Version: 1.0
X-Received: by 10.31.162.3 with SMTP id l3mr14548899vke.68.1454299204721; Sun,
 31 Jan 2016 20:00:04 -0800 (PST)
X-Google-Sender-Auth: Po2g0E-Ge-xFReVhJuT1HVrAmOE
Message-ID: <CAFC7fYSmWcbfC+puEU7gxS+6+o3pfaQUoTCCef3jm9D-8rWc2g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114406ea7ea490052aad6be6
Date: Mon, 1 Feb 2016 12:00:04 +0800
From: Lucas Leong <wmliang.tw@gmail.com>
Reply-To: oss-security@lists.openwall.com
Sender: star03629@gmail.com
Subject: [oss-security] CVE Request: FFmpeg issue
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--001a114406ea7ea490052aad6be6
Content-Type: text/plain; charset=UTF-8

Hi

Id like to request CVE for the following issue in ffmpeg 2.8.5 release

Fixes out of array read
http://git.videolan.org/?p=ffmpeg.git;a=commit;h=0aada30510d809bccfd539a90ea37b61188f2cb4

Regards

--001a114406ea7ea490052aad6be6--
