X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2884" "Wednesday" "16" "December" "2020" "16:08:01" "-0500" "Ana McTaggart" "amctagga@redhat.com" "<CABBoStgbyztdQ3rcAmjROt5LGLi49j3LqGKjgj9xWgOAEF5vXw@mail.gmail.com>" "78" "[oss-security] CVE-2020-27781 User credentials can be manipulated and stolen by Native CephFS consumers of OpenStack Manila" nil nil nil "12" "2020121621:08:01" "[oss-security] CVE-2020-27781 User credentials can be manipulated and stolen by Native CephFS consumers of OpenStack Manila" (number mark "U       amctagga@red Dec 16   78/2884  " thread-indent "\"[oss-security] CVE-2020-27781 User credentials can be manipulated and stolen by Native CephFS consumers of OpenStack Manila\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-27781 User credentials can be manipulated and stolen by Native CephFS consumers of OpenStack Manila" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8093 invoked by uid 550); 16 Dec 2020 21:21:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1538 invoked from network); 16 Dec 2020 21:08:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1608152897;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=KZuDMNU77Fk1TAE8/Sl+9oHS9SZXoHHrTPm3stBAk+c=;
	b=gGjBs1CAlU6xL4mN+6BTO9H82OfuvLo1txYZNiN3pUYTYg5RTs0xbDeBccoHaxvDZYY36W
	/pqhWFZHC3J302qZEl5o3NJNauA/pPnFbsJ/DSYek+YCGoiNlTSarApseQW01V3OojV578
	A78jdg0nb6dnMyWUGayVcyHw/IMlx8Y=
X-MC-Unique: JO8E9xTsOs2sbGQj05Yvig-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=KZuDMNU77Fk1TAE8/Sl+9oHS9SZXoHHrTPm3stBAk+c=;
        b=qxKNBTjetFlFeJrdbCj5QcDMX6MjiZFRGYmQYcP3MV7JrL2TahPmLUWZEjht+4nj7e
         lznnhCHYhb4yQHoy/+pRTSD/a1yjVtKA2YOTlzlUNntsxACbe+ytLoSvIHCjJvfnm6dp
         WgMt2pHXqBUgLRM4ISxZ6j9Y7O/PBDPRasbg2UdO4LPJxifH6EE9aKb9E9UxJvt5ma1Z
         MVaNtRNC+SS1pzakS9zxdKgYSdRt7roEibMa113XMImWS0rL3Zn3CtT8VsuSZFvv1T0l
         QDByRdJllXZBlVaPtYHA5a5U2EnPskh0uTPmZFMPL+6itdSULM+y36T6ct78sP0NZXVv
         xjkw==
X-Gm-Message-State: AOAM532zFVwjBcXrRAzClPDjRKZYtX0JLOBmfUwRgVAMCSwU/yTZgxM5
	0yNVaRHWOWTe9EJ9Odmyf0ETIluea/M2sqg949MeX+6zKRuv6VVUBEwEMzYYB5MSfwH0obBhW1N
	2tI2H91E8gOK0O8tmW0fcyDW5CKopRbeVvEPEqhGWcvPd
X-Received: by 2002:a05:6214:110d:: with SMTP id e13mr45454040qvs.50.1608152892276;
        Wed, 16 Dec 2020 13:08:12 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzR2e/JLebmomrmiUFff58y1eScOBjxTM3SMP9A9pYSL/QiNWQKSe9w6sDBVc+IzF3ZDXv0qGIQSD10GpWlnmM=
X-Received: by 2002:a05:6214:110d:: with SMTP id e13mr45454012qvs.50.1608152891915;
 Wed, 16 Dec 2020 13:08:11 -0800 (PST)
MIME-Version: 1.0
From: Ana McTaggart <amctagga@redhat.com>
Date: Wed, 16 Dec 2020 16:08:01 -0500
Message-ID: <CABBoStgbyztdQ3rcAmjROt5LGLi49j3LqGKjgj9xWgOAEF5vXw@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=amctagga@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000de42aa05b69b4520"
Subject: [oss-security] CVE-2020-27781 User credentials can be manipulated and stolen by
 Native CephFS consumers of OpenStack Manila

--000000000000de42aa05b69b4520
Content-Type: text/plain; charset="UTF-8"

Dear all,
We have received a report of the following vulnerability affecting CephFS.
At Red Hat, we have assigned it CVE-2020-27781

We are proposing a public date of 12/16/2020, as suggested by the
reporter, but want to ensure agreement with upstream first.
I have included our original description of the flaw as follows.

Issue: User credentials can be manipulated and stolen by Native CephFS
consumers of OpenStack Manila

Products affected: RHCS 3.x, RHCS 4.x

Who reported this vulnerability:
   - Garbutt, John <john@johngarbutt.com>
   - Babel, Jahson <jahson.babel@cc.in2p3.fr>;
   - Pacha Ravi, Goutham <gouthamr@redhat.com>;

Details:

OpenStack Manila can provide users with Native CephFS shared file
systems [1]. When a user creates a "share" (short for "shared file
system") via Manila, a CephFS "subvolume" is created on the Ceph
cluster and exported to the manila user. After creating their share, a
user can specify who has access to the share with the help of "cephx"
client user names. A cephx client corresponds to Ceph Client Users
[2]. When access is provided, a client user key is returned via
manila. The interaction between manila and CephFS is driven by two
important parts:
 - The CephFS driver in manila [3]
 - The "ceph_volume_client" python interface driver in ceph [4]

The problem here is that OpenStack Manila users can request access to
a share to any arbitrary cephx user, including privileged pre-existing
users and the interface drivers will retrieve the access key of that
user along with providing access to the share. This access key is then
visible to all users of the OpenStack project that owns the share.
With the help of any prior capabilities of the pre-existing cephx
client user, an attacker has unintended access to the access key of
the user and can target any resource that the user has access to. An
attacker can even obtain the default ceph "admin" user's key in this
manner, and execute any commands as the ceph administrator.

Thanks,
Goutham Pacha Ravi
Project Technical Lead, OpenStack Manila
Sr. Software Engineer, RH OSP Storage


[1] https://docs.openstack.org/manila/latest/admin/cephfs_driver.html
[2] https://access.redhat.com/documentation/en-us/red_hat_ceph_storage/4/html/administration_guide/ceph-user-management
[3] https://opendev.org/openstack/manila/src/commit/7b15796aa5567868e30a6b2b80c57006cfa4f085/manila/share/drivers/cephfs/driver.py
[4] https://github.com/ceph/ceph/blob/c10a7240b657553c366fe62aca92e93d35b166e9/src/pybind/ceph_volume_client.py
[5] https://ceph.io/security/

Ana McTaggart

Red Hat Product Security

Red Hat Remote <https://www.redhat.com>


secalert@redhat.com for urgent response


amct@redhat.com


M: +1 (774)279-0791 <7742790791>     IM: amctagga


Pronouns:They/Them/Theirs

--000000000000de42aa05b69b4520--

