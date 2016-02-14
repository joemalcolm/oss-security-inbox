X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["470" "Sunday" "14" "February" "2016" "16:31:52" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160214153152.GA27269@eldamar.local>" "16" "[oss-security] CVE Request: Linux: ALSA: usb-audio: double-free triggered by invalid USB descriptor" nil nil nil "2" "2016021415:31:52" "[oss-security] CVE Request: Linux: ALSA: usb-audio: double-free triggered by invalid USB descriptor" (number mark "U       carnil@debia Feb 14   16/470   " thread-indent "\"[oss-security] CVE Request: Linux: ALSA: usb-audio: double-free triggered by invalid USB descriptor\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26576 invoked by uid 550); 14 Feb 2016 15:32:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26558 invoked from network); 14 Feb 2016 15:32:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=2Fsu5wcHT6O2w6gzI0wCTjRAi/tPUU60EQE0zphu48I=;
        b=KVgrWZS6AYMhRjXj1GnIOhUgMKb2CNPA+MsUPlr7abde/14VA98qMT3mnaugd4NII9
         nivJ6o0/gGqbChOCAeF6/1usCsZoxkhvvVR4r2OpvgiZnqDzYrMQunbvHanqWC956w7W
         2hSSPuuULHKBOdTQUBgMYR8hA6lM48PefhEDKkPiNIn0X5A6mJHO1FdTcpqcM+sROvvh
         CrxRT72Sa4MSR79IjjH9gQakeNqhB7PYPxsnlD0EGzLNoDdx7fSfWnni/DF8j5LUsgaT
         56ST3i/vq/6YMUSfwhcaGcCfznbv2ud+2BeaMOFeRnJ7Ztu5rgT1Iahimtau0bXCPsHP
         9Xvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=2Fsu5wcHT6O2w6gzI0wCTjRAi/tPUU60EQE0zphu48I=;
        b=J9WESBfTxjOiRv/xEcGXUllpSTgPrJ+P5E6uKLFYD9Qydr1OszgMbddxysWlMuY0C5
         ujjGouzM8jCJ/Tuei9bAz0nc7NbqpW4oPc6XpTRD++shjHX0S4B5qWUh0bQiNzYYY/fC
         zCSwt/4uGxBmjunBw+TgL69arEaVYxkOdPpVlaAmDXvYYw1eX05pMrTt4IYBcB1nKHt+
         Kn1BbhNHMAin23yZFj5Nt0T9kM0iX5b95t1WPD+VLv+FZN8GswPoZqfC2XMAfxT65pJt
         GAVytJc76En9PncYLLhJyy/KB14YEnTEo9f3IPMbpNv8hAkm32CtIv3UHot38MRbMBoI
         08XQ==
X-Gm-Message-State: AG10YORqB4OJhTylaTqPd5mP7B42VyvHARw7MpFX6v1XMtfXVAg+0Bto5epRl09QIAQEXQ==
X-Received: by 10.28.176.200 with SMTP id z191mr8194218wme.91.1455463915407;
        Sun, 14 Feb 2016 07:31:55 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 14 Feb 2016 16:31:52 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Cc: Ben Hutchings <benh@debian.org>
Message-ID: <20160214153152.GA27269@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Request: Linux: ALSA: usb-audio: double-free triggered by
 invalid USB descriptor

Hi

There is a double-free flaw in the ALSA USB MIDI driver:

> The 'umidi' object will be free'd on the error path by snd_usbmidi_free()
> when tearing down the rawmidi interface. So we shouldn't try to free it
> in snd_usbmidi_create() after having registered the rawmidi interface.

This was fixed in https://git.kernel.org/linus/07d86ca93db7e5cdf4743564d98292042ec21af7

https://lkml.org/lkml/2016/2/13/11

Could you assign a CVE for this issue?

Regards,
Salvatore
