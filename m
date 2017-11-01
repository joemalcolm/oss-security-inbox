X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1222" "Wednesday" "1" "November" "2017" "10:32:41" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2TdNjz6NzOTsmaiYegKwGck5S07V4LAbW7p1NcXP27sw@mail.gmail.com>" "35" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110116:32:41" "[oss-security] Fw: Security risk of vim swap files" (number mark "        kseifried@re Nov  1   35/1222  " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<CAH8yC8=KKh8SPtDUUSAL_GuDHT7eYBrmHvVjzeQ5n4ocFh4m5Q@mail.gmail.com>" ("<20171031132352.2df6d2ad@pc1>" "<20171031175407.jcniviupwyab6qcl@sentinelchicken.org>" "<20171101023330.GK30551@takahe.colorado.edu>" "<20171101144927.srk7stiwoia4qt57@sentinelchicken.org>" "<CAH8yC8=KKh8SPtDUUSAL_GuDHT7eYBrmHvVjzeQ5n4ocFh4m5Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3954 invoked by uid 550); 1 Nov 2017 16:32:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3933 invoked from network); 1 Nov 2017 16:32:54 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=yChfSMdub0d7AcSYIZyoqOf/lLBxV0uzqtsCF3ketvo=;
        b=BbeWEiBJa9L8k43sc5jROhsnqQ6GazRWrGzH5lBl7yB5/2bH+OhVzrjgBWDYo5udfv
         GLKeyBY1lbUb/Vr5T67qGjozCq85FpKTHlglj3wozJ/83XdFXlsSInRuwLtjr3cAjFNu
         vhN7reZGJw6mjYA748sCG+vZckIpBy7Eg+FIZocgLsxbAv2oNbIkR7TgdQMYa+ZR6yzu
         bV2vUFUR1GKSFNf2GUhG0KMtdOzAbD3uSJAZw/irBpwjewHxltbFvn+iHch/lQI+5UvN
         0a75SCBVmUAuSF9+yDh5Ci8PB0VR2lwM32DqUoB3bxyuRq9y6shEdMJORSGJj3Kgpmv3
         n4WA==
X-Gm-Message-State: AMCzsaWf3dWO8c8hQU76/KXG94IsEUa5cKVCWAheTTVa6B33KyCHW9wx
	vivD/UFOtUHjOIu9FONgWyzSI9uAawz43bFpyTrd8TW0B5c=
X-Google-Smtp-Source: ABhQp+QNwuT9hq0gnz4lit9y3Wi/Xvn3z8evU3FyEMJwR+b3VJl0uRlhWDkwYfGlr1zW9mS+uARvj2NO2pUqJbRRWso=
X-Received: by 10.202.191.196 with SMTP id p187mr249305oif.162.1509553962562;
 Wed, 01 Nov 2017 09:32:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAH8yC8=KKh8SPtDUUSAL_GuDHT7eYBrmHvVjzeQ5n4ocFh4m5Q@mail.gmail.com>
References: <20171031132352.2df6d2ad@pc1> <20171031175407.jcniviupwyab6qcl@sentinelchicken.org>
 <20171101023330.GK30551@takahe.colorado.edu> <20171101144927.srk7stiwoia4qt57@sentinelchicken.org>
 <CAH8yC8=KKh8SPtDUUSAL_GuDHT7eYBrmHvVjzeQ5n4ocFh4m5Q@mail.gmail.com>
Message-ID: <CANO=Ty2TdNjz6NzOTsmaiYegKwGck5S07V4LAbW7p1NcXP27sw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a113d673cb552e9055cee6b92"
Date: Wed, 1 Nov 2017 10:32:41 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security <oss-security@lists.openwall.com>

--001a113d673cb552e9055cee6b92
Content-Type: text/plain; charset="UTF-8"

One note on something a lot of people seem to be getting confused about:

umask is a mask that is applied to permissions when a file is created.

umask is NOT the reverse of the permissions your programs/etc are supposed
to create files with.

E.g.:

1) if I have a umask of 0002 I'm saying "never create a file that is
readable by 'other'"
2) if I have a umask of 0007 I'm saying "never create a file that is rwx by
'other'"
3) if I have a umask of 0077 I'm saying "never create a file that is rwx by
'group' or 'other'"

A umask of e.g. 0007 is NOT saying "create my files with rwxrwx----", it is
saying "remove 'rwx' from other when creating a file, I don't really care
what you do with user and group permissions"

So programs are free to create files with less permissions, e.g.
ssh-keygen, it creates files rw-r-----, minus whatever your umask is, so if
you apply a umask of 0077 you'll get files with rw-------- which is what
you' expect.

-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113d673cb552e9055cee6b92--
