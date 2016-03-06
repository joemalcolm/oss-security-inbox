X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1771" "Sunday" "6" "March" "2016" "21:12:03" "+0200" "Elad Alfassa" "elad@fedoraproject.org" "<CAN0s7yS36t6L-xuwAqXH493TsmcQT5rb2LJ-Z3FYA8AsFE_+sw@mail.gmail.com>" "38" "[oss-security] Transmission BT 2.90 Mac malware. Website compromised?" nil nil nil "3" "2016030619:12:03" "[oss-security] Transmission BT 2.90 Mac malware. Website compromised?" (number mark "U       elad@fedorap Mar  6   38/1771  " thread-indent "\"[oss-security] Transmission BT 2.90 Mac malware. Website compromised?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26306 invoked by uid 550); 6 Mar 2016 19:12:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26241 invoked from network); 6 Mar 2016 19:12:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:date:message-id:subject:from:to;
        bh=Dpx4rMVj1X+D0NNwlfHxGofQnQjrwUZPCrMak6rvZFA=;
        b=Icw0k/IkXeRRjjvEVPBGswqQVv40PKePZdVrDXaVg7uzW0aDhIkcvpUviNIhavh195
         8RIdpZKoLLf0mUJchBpevlFLr+R+MOyhI/HU30JnU7y9YACxFN1uOKVEKFcGgiPqSHRr
         xeJ7BfqzWKuuKT9RLzDDg4KJ/QBv2bObQQ/riy5kWEdXkz85UnVunzyndG6CaciCPVNm
         HKqXQLQ6XFdtisRC8G2YonZqfXzCmDYueKZSKa/iuo+cfgmKCmmiNZ0J0ylUk4QI61aK
         LZVz+Y1dCXVKGUbaEmGv8P52rZRYHQ8K/WS1yM4pbUiLOT8Feg4s0EzulqrHViP/an2W
         EF4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:date:message-id:subject:from
         :to;
        bh=Dpx4rMVj1X+D0NNwlfHxGofQnQjrwUZPCrMak6rvZFA=;
        b=MTB/iUNML0wpeG4nwmJoogiPhKqExz6jntpBMIjweG+7Ry8aOh3jiRu1UBC4MJ8++T
         JAdbCXkh5MlunalVOldbCcNckWVRBW/oxqIYJBpdRajyFVwrNn8CeMulzlN0q67mukGn
         GyEc0c5toxqHVmY0PTxRlTDu65M6BGiFTCqPXLa4usj/7icI77CYEfoCg7huS1yoRbRO
         AdoM7Zy/BuV3lko8nEB57G6w8Pa8YkH35vb1UPgIJNjA7SrLN4C6PKipw/T7K1E7QR7t
         XhCLs6b0hkkeGG/iGYQHPgW3h0gIvzSJ5APsIGqu1wnCbSYw+6lE0kYgyQn96IO6gp3o
         s77Q==
X-Gm-Message-State: AD7BkJLTYZzYDHcrYVOZ61DDZ1yqH6P1AdZpevW4ojqvUtAXF/3jyV7XkGHOOo8rqXPh1TLQGZv953hr7taIzw==
MIME-Version: 1.0
X-Received: by 10.50.65.1 with SMTP id t1mr8861930igs.34.1457291523771; Sun,
 06 Mar 2016 11:12:03 -0800 (PST)
Sender: eladalfassa@gmail.com
Date: Sun, 6 Mar 2016 21:12:03 +0200
X-Google-Sender-Auth: YqrH5IxdhVYD5wPFktmKYtDrTx0
Message-ID: <CAN0s7yS36t6L-xuwAqXH493TsmcQT5rb2LJ-Z3FYA8AsFE_+sw@mail.gmail.com>
From: Elad Alfassa <elad@fedoraproject.org>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Transmission BT 2.90 Mac malware. Website compromised?

Hello oss-security.

According to these three links,
https://www.reddit.com/r/netsec/comments/498bb7/transmissionbt_290_for_osx_contains_malware/
http://www.cnbc.com/2016/03/06/reuters-america-apple-users-targeted-in-first-known-mac-ransomware-campaign.html
https://forum.transmissionbt.com/viewtopic.php?f=4&t=17834

and the project homepage https://www.transmissionbt.com/

The mac build of version 2.90 of the popular Transmission bittorent
client was infected by malware. However, there's not much information
about the source of the actual malware:

* How did it get to the official download location? Was it a
compromised server or someone with access abusing it to distribute
malware? What steps did the transmission project take to ensure that
the attacker no longer has access to their server? When were the
infected files uploaded to the server? And, most importantly, are
builds for other platforms and source code archive download affected
in any way?

Transmission is included in many Linux distributions (default in some
of them). If the source code archives (which are not signed, there's
only a checksum on their website, but if it was compromised then it's
not exactly useful) used by these distributions to build Transmission
were tampered with as well this might mean malicious code is already
inside the Transmission packages in these distributions. While the
malware mentioned in the link above is Mac specific, it is still
possible that other downloads have been infected by different types of
malware.

Since I couldn't find any security related email address or mailing
list for the transmission project specifically, I'm sending this to
oss-security in hopes that relevant people will see this and will shed
more light on this story.

-- 
-Elad.
