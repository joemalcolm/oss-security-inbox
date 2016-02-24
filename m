X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["391" "Wednesday" "24" "February" "2016" "09:10:37" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdRX-tyOuVDXfTeFXfen6hq54e_zMVhsd5_TYW1XsHHk+w@mail.gmail.com>" "16" "[oss-security] [Pixman] create_bits(): Cast the result of height * stride to size_t" "^Date:" nil nil "2" "2016022412:10:37" "[oss-security] [Pixman] create_bits(): Cast the result of height * stride to size_t" (number mark "        gustavo.grie Feb 24   16/391   " thread-indent "\"[oss-security] [Pixman] create_bits(): Cast the result of height * stride to size_t\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22070 invoked by uid 550); 24 Feb 2016 12:11:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21731 invoked from network); 24 Feb 2016 12:10:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=87MpOF88oj3jcH0GenbOvLQUMNZIWEiFmHgiKv5udpE=;
        b=0W38xhkZxaj0G8+7fzIBK+ubsZIH3QzRS1CzqdUW5HPLHJHwCALDuX9sqWiX8Vphub
         LsGHdntOnp/sfRFGoLzbe3qPCK3s2MzuihPAbOiXn+ovtOIt3KMUdwmyrWhwyjI9RR47
         nUGbiuodz0SJUtbloyEqwvf8iIFTUBa/ggmRDSlNMA79sYrRvNaVVHR+w3swU9EEZU5H
         oa4l3Bk46USuYi4avTOLUKtFsUaRGGG94pr6QMVwh91CJbGeGaz1TOvuVQ7VEi5mOMLh
         MdJGJiRZKxgr7vC25t02DO/JP2oLqjQju9gH80z8I0N55+AEfRmcRsJx1F4QR8a8aF2Y
         IT2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=87MpOF88oj3jcH0GenbOvLQUMNZIWEiFmHgiKv5udpE=;
        b=UGPJUxJPqXZ1tGBIj/wKoGXaqnOMLIKuxq3stU+b7RsCsj1oYb3Qk5LUd4c85oYeny
         Odc35NVz8hyGa//HviMdYpTfWm2KK8im4uuVMfJ4UFZDUKzFEPa0cts/ypaQlkAsXwr1
         6yfMXSRCpHhxrltAKoBjno82EHtT/B5Ue2iw08aGUT6nDah4eKWzsgNAGeFSAi8QbKms
         YD5stE4/1zLFYITMQrqnOVcVxeTV/dsPkNvKfcOMQIfehr9hYPRH1Dbqa98QD7Hf4xjb
         yFFvB6TmqU3eSeQpfuyFomfpoWxdIgIOgI3ZeXvdiexGGCpYEjeZuiNFdDNGAZkkOiRO
         l2fw==
X-Gm-Message-State: AG10YOTE/UV81X6dN5JxWbPdGcq0j71BW2ltyNPD7akcaIrEKlKwrXAlEfx/NjcUcaj0aUQb5FWdU6Mtoup6Mg==
MIME-Version: 1.0
X-Received: by 10.25.212.197 with SMTP id l188mr14388247lfg.118.1456315837598;
 Wed, 24 Feb 2016 04:10:37 -0800 (PST)
Message-ID: <CACn5sdRX-tyOuVDXfTeFXfen6hq54e_zMVhsd5_TYW1XsHHk+w@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114190402e546e052c82f490
Date: Wed, 24 Feb 2016 09:10:37 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [Pixman] create_bits(): Cast the result of height * stride to size_t
To: oss-security@lists.openwall.com

--001a114190402e546e052c82f490
Content-Type: text/plain; charset=UTF-8

 Hi,

There is an (old) integer overflow in create_bits in the pixman library.
Patch and details are available here:

https://web.archive.org/web/20141227044037/http://lists.freedesktop.org/archives/pixman/2014-April/003244.html

Please, assign a CVE to this issue.

Regards,
Gustavo.

--001a114190402e546e052c82f490--
