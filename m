Received: (qmail 32098 invoked by uid 550); 2 May 2026 13:26:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24087 invoked from network); 2 May 2026 11:10:35 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1777720224; cv=none;
        d=google.com; s=arc-20240605;
        b=ihs/xrq3ykRMp300j3HBq6fFoepILl4FbIyzrvD0wIxdcmigeIs8Do4uj3ewIjEi+X
         zfF5NyUJrN847QD1KRjoRkS5Z/19UydiFsUlDN2b2jF7r21vDXGS2up/9xO6VHOZpEVW
         F6XJ85prqGWCNlvet42iTYaM9LMiD19ya6qu0Sz/jBu4QjLiD3lqikY4m4UI6rPXHEBL
         u+H+6SYD9QJZ4I+c0sIcvPzCXa5DjPa68yPk4OHvzgfxC+kdU971ATVHsqrrO5r1m2Kd
         8x95yvYEt9Gzphu95+3MqiNfWmoAiJJ6yc1MJUBWrgGdHrgD2HUq4WpLj+S5BiQQ3z1c
         eLng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=+vbO5s7XUlrZHMnzB+q7dJX96xaepduCHxYgtS9ap8o=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=JWZBsMJQHISOrlTw387c+8ccBbz1IpEfDBtSEVAWuqqGnZUPsZE8n+PfiRS8DPcSv4
         f3ula4u73A5Ih1Qcg50VwjCn0kCVhY5lxYA81c+Ho201zYu9Nb+M9avrPBH/NcqSYqgy
         kzmNuw5FUhmzVZo5O/O8qYSNvmEyiztfxTGR0uzY6YH9EdQNl09t6bL+A8JWk4YEUjc2
         t4DyO1Xeyr+JUHdR3NTMvTj3yv2XGgHca34k+RA/eQ5WUrvhxrrVu53dR8vfwOzwOAlp
         E6JhDz3EA3d6KZ/33zNNoQZd3R3a0d9yIY1vAau4ZgsGo2jxptGaZ2eKrvO5X9O/n4eO
         mXmg==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777720224; x=1778325024; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+vbO5s7XUlrZHMnzB+q7dJX96xaepduCHxYgtS9ap8o=;
        b=hQVrLM3mp+08hgTAGwqjl7NQ25NPvc9sfBLZbWOdpGr9WEp3u9C2rKxw19GV2nkr/R
         abBBADxcESzWCOxysg1/lR+RURppVtOHfIDDtUZeKQA2lyKz3lRE07nsq9w0ht4AKs6Y
         uLvrYLMT9kUDTYrT5BpVZ2uM0/8q263lLUIaiM4OHBNeW56yVFxo/GP/yVwSed4GJerd
         CnFfG7g2iYSF5fbJFXtk2GM9bNxinyKe9+FgzHXhaQBUcD5wWSDaAb01LRwBoTlf+bS9
         EDZ5dW4W1L6djDzDeVYgGntR6TRimdkH+TAdD41MyZELjkuNPaZGE32M/KasO+ROVlVm
         5tkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777720224; x=1778325024;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+vbO5s7XUlrZHMnzB+q7dJX96xaepduCHxYgtS9ap8o=;
        b=m6QuYoeoUINghvKq3P2lduuMTo6OVKgooy/0F+oCZSAxIs99KhKIRG+xyD6O5/wRcD
         +2N5Wz4cpHUERY5bKcJT7Lng8jjEl+7sxlaCAf6e4uOZi17DalQECz5K55icBkci6q12
         nJ+k5HehC6hLNU9VGn2r52qQmLKSPkN7tnjRuummzydQEqgoChM5YNl9idKyGOLavsjc
         k8tZy7Ep+Nx4bA+f4yNSXc0vUROjmlx89SM5Gnlwbu57qkCEQ98arttum/5fEnP2oASy
         qx31ag5UreiCsFinc4JFWgMEkPEDz8HA5hA+woHURoKDoYfwHrC8EXawtiHvdAHm4w1+
         /sxQ==
X-Gm-Message-State: AOJu0YyFwA9A0wZQ/btL6wZMr92emegTiWVvVo71JDwhnIf0Zuj/+7ZJ
	wfUogSjL8wHgTpCIABczYHBGNCwlFVjiZfMdzHroFW2GRgYksrCc4y3W1MgcRmnpoJuMcdO6x1C
	LGj2VhKwmKDyTXGrQ3ySBfg+TVpJka7fiKyUW
X-Gm-Gg: AeBDiesaQq3t+NqJ4E4u0t8of5zcXZJsJNsVYfENpiPKmgWY17iFAH536D7sSGW0w+y
	NBa1jWcdQ1cuuYToqa4vFa8vstbpMPutSKrVfofny4qFG6tQAnGDs2adDYe1a1jVx7uBEBzYqsW
	eakRYCDQiBLnmvaLudzXzwSslKbTZK9E+50sxIpPA0908LfohCzRg5oroZXHHS+VP75P8jp2GDL
	FMVPOR6z72r0wpXpuhZAQvnrZiWAILbaBFdfrLgmYtUwi5TxMl7vqgCFxS8MgIPNS2MDUre9piI
	R6A8u2sZUADh1rch1l3w
X-Received: by 2002:a05:6512:68b:b0:5a2:b881:3289 with SMTP id
 2adb3069b0e04-5a8631bfeaemr303450e87.5.1777720223431; Sat, 02 May 2026
 04:10:23 -0700 (PDT)
MIME-Version: 1.0
From: cyber security <cs7778503@gmail.com>
Date: Sat, 2 May 2026 07:10:11 -0400
X-Gm-Features: AVHnY4LbodHUOpQDRUr6-tDvR7JqaiAf67eZKWSVuYIjbY1DPCgQcGJfPD7Jg9c
Message-ID: <CAPmip_x500e2byteqx7jO7BpnWUai-rbgsKgWhenRU-PaEyUBA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Ubuntu back up, In Saturday after DDoS attacks

Hello, Everyone

I wanted to represent, That we confirmed the ubuntu and canonical
websites are back up and working, that is exciting


```
relunsec@relunsec:~$ ping ubuntu.com
PING ubuntu.com (185.125.190.29) 56(84) bytes of data.
64 bytes from website-content-cache-3.ps5.canonical.com
(185.125.190.29): icmp_seq=1 ttl=53 time=44.4 ms
64 bytes from website-content-cache-3.ps5.canonical.com
(185.125.190.29): icmp_seq=2 ttl=53 time=43.0 ms
64 bytes from website-content-cache-3.ps5.canonical.com
(185.125.190.29): icmp_seq=3 ttl=53 time=44.1 ms
^C
--- ubuntu.com ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2003ms
rtt min/avg/max/mdev = 43.030/43.845/44.375/0.585 ms
relunsec@relunsec:~$ sudo apt update
[sudo: authenticate] Password:
Hit:1 http://ma.archive.ubuntu.com/ubuntu resolute InRelease
Hit:2 http://ma.archive.ubuntu.com/ubuntu resolute-updates InRelease
Hit:3 http://security.ubuntu.com/ubuntu resolute-security InRelease
Hit:4 http://ma.archive.ubuntu.com/ubuntu resolute-backports InRelease
All packages are up to date.
relunsec@relunsec:~$ ping snapcraft.io
PING snapcraft.io (185.125.190.20) 56(84) bytes of data.
64 bytes from website-content-cache-1.ps5.canonical.com
(185.125.190.20): icmp_seq=1 ttl=50 time=47.3 ms
64 bytes from website-content-cache-1.ps5.canonical.com
(185.125.190.20): icmp_seq=2 ttl=50 time=49.4 ms
^C
--- snapcraft.io ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 1001ms
rtt min/avg/max/mdev = 47.253/48.332/49.412/1.079 ms
relunsec@relunsec:~$ ping security.ubuntu.com
PING security.ubuntu.com (91.189.91.82) 56(84) bytes of data.
64 bytes from ubuntu-mirror-2.ps6.canonical.com (91.189.91.82):
icmp_seq=1 ttl=47 time=203 ms
64 bytes from ubuntu-mirror-2.ps6.canonical.com (91.189.91.82):
icmp_seq=2 ttl=47 time=225 ms
64 bytes from ubuntu-mirror-2.ps6.canonical.com (91.189.91.82):
icmp_seq=3 ttl=47 time=145 ms
^C
--- security.ubuntu.com ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2003ms
rtt min/avg/max/mdev = 145.119/191.014/225.377/33.764 ms
relunsec@relunsec:~$ nslookup ubuntu.com
Server:        127.0.0.53
Address:    127.0.0.53#53

Non-authoritative answer:
Name:    ubuntu.com
Address: 185.125.190.29
Name:    ubuntu.com
Address: 185.125.190.21
Name:    ubuntu.com
Address: 185.125.190.20
Name:    ubuntu.com
Address: 2620:2d:4000:1::28
Name:    ubuntu.com
Address: 2620:2d:4000:1::26
Name:    ubuntu.com
Address: 2620:2d:4000:1::27

relunsec@relunsec:~$ ping canonical.com
PING canonical.com (185.125.190.29) 56(84) bytes of data.
64 bytes from website-content-cache-3.ps5.canonical.com
(185.125.190.29): icmp_seq=1 ttl=53 time=44.0 ms
64 bytes from website-content-cache-3.ps5.canonical.com
(185.125.190.29): icmp_seq=2 ttl=53 time=43.2 ms
64 bytes from website-content-cache-3.ps5.canonical.com
(185.125.190.29): icmp_seq=3 ttl=53 time=44.9 ms
^C
--- canonical.com ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2003ms
rtt min/avg/max/mdev = 43.181/44.051/44.946/0.720 ms
relunsec@relunsec:~$
```

Everything working no slowdown, no connection timedout, no connection
refused, That is a good news, Now peoples must update and upgrade
their system now and your snaps and monitor the status of CopyFail,
before attackers resume their operation.

Best Regards,
RelunSec
