X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4973" "Thursday" "27" "February" "2020" "08:15:35" "-0800" "Jonathan Brossard" "endrazine@gmail.com" nil "225" nil "^Date:" nil nil "2" nil nil (number mark "        endrazine@gm Feb 27  225/4973  " thread-indent "\"[oss-security] Hostapd fails at seeding PRNGS, leading to insufficient entropy (CVE-2016-10743 and CVE-2019-10064)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Hostapd fails at seeding PRNGS, leading to insufficient entropy (CVE-2016-10743 and CVE-2019-10064)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25817 invoked by uid 550); 27 Feb 2020 16:24:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21868 invoked from network); 27 Feb 2020 16:15:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:autocrypt:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=v8J8qxjLL4pHkMd4K0vnK7FTOvEU8Db+OrAMIMxiq7Y=;
        b=QncoJ11P2blPxy6oYCgKy7KS3/XjHhsxnoEtdY7n9ysE5nqTlqYImGpWcRYuA3vtgt
         Fl7FBySUgQshGFAdYI2lq13cr14JiulQFcFO9cFCho8or8fk/bzl2P9D7qIXBTz+7so5
         ReaO+mgO3XIjLr/kRjEemw1OCAaTIkv9ox9Pnbyv4IuSAS3ogojDuWqQJWdg2B1oigSi
         PsAVUmaxNHZq5h8upatkVsYlaLHlsq4pMzEMgiJeL7LY006dm+k7zHPoRDVTjlvX6csU
         SF0DIS69rmKkI/MtfWGLMvHEGaftj/3YZMdb3/HDk0KHHYjLiCTst8lCPaAC/pJmv+BQ
         2Y1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:autocrypt:subject:message-id:date
         :user-agent:mime-version:content-language:content-transfer-encoding;
        bh=v8J8qxjLL4pHkMd4K0vnK7FTOvEU8Db+OrAMIMxiq7Y=;
        b=nRqp1sLTw71DWnKhcKhEKSVIRVbpisH9+4fku/Dlfng+nmDdwbzeJNReQNh+ExzSnC
         lPOyKIkaj8lMkw13wNAu8bxjWnD1VxD3V7r1bNbB2W1zqy9YCVv25a8t7f4mTPL/kZ/v
         tttm5/9nwUY4cJLdmdHlbdXSCyFwTLQBAqfj+zWOv1VfuAIxAcishFeqPSoAxOr7iLtQ
         sRrofy2RzQjVKMWuOJw7hJMPCtv0I/3aMJJdKrcFbNwSF309PvII5B3PuiN/G2XUYCfN
         Mdv4o3mdieR8BmbILyFKVee3aa3sJ/WhGfJsKL/BaLb7qZwMK3Mq39vI3PxQDg57EiYt
         Neow==
X-Gm-Message-State: APjAAAUivy4wzSYxXarF7+Zzzo7moaBw2GiwxkMy2R4/FeS1pUzImgsp
	pVU00cQs57v8zEUzFn0esWA=
X-Google-Smtp-Source: APXvYqx8ByIQ7Io+iKAwWCnZCxs6VOh62Sqf56GccUEdmY7gv9nL7kbVIv1RldK4zPV2JmJ6GokmjQ==
X-Received: by 2002:a63:4757:: with SMTP id w23mr126086pgk.115.1582820137892;
        Thu, 27 Feb 2020 08:15:37 -0800 (PST)
Autocrypt: addr=endrazine@gmail.com; prefer-encrypt=mutual; keydata=
 xsDiBExVw2kRBACN0ResNOdo/HOSoULZv3KA58fGfCLSawC4iolZFlv7PWPBoKYOFoG/4K/T
 pomXmlhTHdd++hH172zdqgwfbSrdwIV+SyYWzrlmBYk0V6ddkdddlQkLxFJFsJLIqVl6upDa
 Hs7wf1WBNPLxv+AurdTIlm3qTe7j1It6y9ibA2ajXwCgz36tOKom2MbkXVJSZKGDTFTGV28D
 /2LqVFzq5a5gg4l+7ZRSA84/VRNlXHMIaC3z216Auo67Und4+dk3kKAcwiX27Ai3keIlaKth
 pbH36SA6U8B9vDjMuCwTs9Y4EPr0qzP5qT98i4tcK7g/fjwIc857DOD0CzviSlushsGXuhwf
 cjLd56f4w6J3D0F7hP36qZrVpxszA/4wc8FsG23TMXt0DMmxnHq7R6K2lOa5Q9rLEd972mQy
 hto5X1bAtKYPhI7gxp4Q/1RZ6PyDNNxrQn+wYEWAI3QG6Kqm0xCoj9i+2dAH0rQfmkziPwHr
 48+RXvAp37dcTDDc4sQKYWsX32q6bn0c0jvdVjO6uN3b3AbkLsfWtaLRhs03Sm9uYXRoYW4g
 QnJvc3NhcmQgPGpvbmF0aGFuLmJyb3NzYXJkQHRvdWNhbi1zeXN0ZW0uY29tPsJgBBMRAgAg
 BQJMVcNpAhsDBgsJCAcDAgQVAggDBBYCAwECHgECF4AACgkQSR1YzUY93v74qQCeJG7Q9JUE
 YMm1YEbNO3OjkhY9/BkAniqn06SH07uSF99A9n4WJ2mR7lrRzsFNBExVw2kQCADDIQlnbY9w
 7G3Nd+7+np2Oai0/3lhdyNHAzYbQzf+bMh/WTqA945crdZclnFgUj4NwwChbS9n/PepTQu+0
 qDHZZ4SYDqc/ow+SqaDmnOQTq72JXgPJTP8COfzaSxowOxY6mSdvMfTDIjSkKWb1e4pOUFPF
 NErut29wa6bmNJDNbrrGebLvD8G9xEbA7K1h8UbuBp9dMXSuxQd07pR3Xuow15LI9ObVynJ1
 7g1pgoK+SAHS/qGIy/wlDVEp7x6gymkD4VXWSFPC1mQir89rWRldURZrdz4lU7ByVakag12z
 ChiHIFByPo/lIwy6u68INBqH/TpkcAOWs+US9SxKxTnDAAMFCACNpq9RXMYMlNZNz6lKN3vw
 keSeqZ6TS+KMDQT3ETv//YaUOvrwovbX1cgikRJlNh9c0C4pMQcVQRCeydRMctQDKSRcatAj
 ipNevBXG3TqFuEffPBGqnajPlCSj1+GgBrhTJa/PGWlD3yECUCO36UHn3/w9UfJqTkN6/3EZ
 H8tZAMQgst8Kn3biQCUjoflclV7AlNumG/LVx6lHFWp5IV9/bMcH9kUwSmYEXRDItLhGKiz9
 XJPZoiFmoRueEPaht2wWLkE/Yhmq3FcxNJXtZyOyH5o4B128arNcrMWpbb5SOwj7wQEqTYaO
 oOQZkBb1pne+3sj/wxRmX4LbYB6gLW0GwkkEGBECAAkFAkxVw2kCGwwACgkQSR1YzUY93v4a
 MQCffQvn6wfRwg9f/8l+DD0e5t6NbSoAn0BnAnc3MDY/IX5c5iQlB4n9kbXo
Message-ID: <4c04f877-a0e6-c536-7e2a-588728a0f63b@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: fr
Content-Transfer-Encoding: 8bit
Date: Thu, 27 Feb 2020 08:15:35 -0800
From: Jonathan Brossard <endrazine@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Hostapd fails at seeding PRNGS, leading to insufficient entropy
 (CVE-2016-10743 and CVE-2019-10064)
To: oss-security@lists.openwall.com

----------------------------------------------------------------------
*               Hostapd fails at seeding PRNGS,                      *
*               leading to insufficient entropy                      *
----------------------------------------------------------------------


--[ Vulnerabilities Summary:

Date Published: 27/02/2020
CVE Names: CVE-2016-10743 and CVE-2019-10064.
Title: Hostapd fails at seeding PRNGs
Class: CWE-331: Insufficient Entropy
Remotely Exploitable: Yes
Locally Exploitable: No
Impact: Remote network access, remote Denial of Service
Advisory URL: https://moabi.com/advisories/CVE-2019-10064.html


--[ Synopsis:

Hostapd (host access point daemon) is a user space daemon software
enabling a network
interface card to act as an access point and authentication server. It
is powering
billions of IoT devices.

It has been discovered that hostapd before version 2.6 wasn't seeding
PRNGs at all.
This vulnerability has been fixed silently around 2016, but never
attributed a CVE
number, leading to many distributions and IoT devices still shipping
this version of
the software. This vulnerability has been given id CVE-2016-10743.
In some configurations, when WPS is enabled and a /dev/urandom device
isn't available,
this leads to WPS PINS being predictable, allowing remote network access
from an attacker.

In addition, it has been discovered that the Extensible Authentication
Protocol (EAP) mode,
which offers a protection against flooding attacks, also uses
predictable PRNGs. This
vulnerability has been assigned id CVE-2019-10064.

--[ Details:

* details for CVE-2016-10743:

CVE-2016-10743 has been silently patched with commit:
98a516eae8260e6fd5c48ddecf8d006285da7389 on http://w1.fi/hostap.git on
Tue Feb 9 14:47:47 2016 +0000 by Nick Lowe <nick.lowe@lugatech.com>

https://wiki.sei.cmu.edu/confluence/display/c/MSC32-C.+Properly+seed+pseudorandom+number+generators

https://github.com/jmalinen/hostap/blob/a06b1070d8902460a9c61a3e13af577327fce6b3/src/utils/os_win32.c
unsigned long os_random(void)

 {

  return rand();

 }


https://github.com/jmalinen/hostap/blob/a06b1070d8902460a9c61a3e13af577327fce6b3/src/utils/os_internal.c

unsigned long os_random(void)

 {

  return random();

 }


https://github.com/jmalinen/hostap/blob/a06b1070d8902460a9c61a3e13af577327fce6b3/src/utils/os_unix.c

unsigned long os_random(void)

 {

  return random();

 }


In all cases, os_random() is not seeded, and therefor entirely
predictable and repeatable.

This is exploitable via the WPS PIN generation, as detailed here:

https://github.com/jmalinen/hostap/blob/a06b1070d8902460a9c61a3e13af577327fce6b3/src/wps/wps_common.c

/**

  * wps_generate_pin - Generate a random PIN

  * Returns: Eight digit PIN (i.e., including the checksum digit)

  */

 unsigned int wps_generate_pin(void)

 {

  unsigned int val;



  /* Generate seven random digits for the PIN */

  if (random_get_bytes((unsigned char *) &val, sizeof(val)) < 0) {

   struct os_time now;

   os_get_time(&now);

   val = os_random() ^ now.sec ^ now.usec;

  }

  val %= 10000000;



  /* Append checksum digit */

  return val * 10 + wps_pin_checksum(val);

 }



* details for CVE-2019-10064:

The EAP mode features a flood prevention technique, which is defeated
due to lack of proper seeding of PRNGs:

https://github.com/jmalinen/hostap/blob/a06b1070d8902460a9c61a3e13af577327fce6b3/src/eap_server/eap_server_pwd.c



 static void eap_pwd_build_id_req(struct eap_sm *sm, struct eap_pwd_data
*data,

      u8 id)

 {

  wpa_printf(MSG_DEBUG, "EAP-pwd: ID/Request");

  /*

   * if we're fragmenting then we already have an id request, just return

   */

  if (data->out_frag_pos)

   return;



  data->outbuf = wpabuf_alloc(sizeof(struct eap_pwd_id) +

         data->id_server_len);

  if (data->outbuf == NULL) {

   eap_pwd_state(data, FAILURE);

   return;

  }



  /* an lfsr is good enough to generate unpredictable tokens */

  data->token = os_random();

  wpabuf_put_be16(data->outbuf, data->group_num);

  wpabuf_put_u8(data->outbuf, EAP_PWD_DEFAULT_RAND_FUNC);

  (etc.)

--[ Suggested patch:

It is recommended to seed PRNGs by reading /dev/urandom, for instance
using the routine below:

/**
* Get a random seed
*/
int getseed(void) {
        int fd;
        int r, n;

	fd = open("/dev/urandom", O_RDONLY);
        if (fd < 0) {
                perror("open");
                exit(0);
        }
        n = read(fd, &r, sizeof(r));
	if(n != sizeof(r)){
                perror("read");
                exit(0);
	}
        close(fd);
        return(r);
}

--[ Disclosure timeline:

26/03/2019: Vulnerabilities discovered.
26/03/2019: Reported vulnerabilities to MITRE.
26/03/2019: Vulnerabilities assigned ids CVE-2016-10743 and CVE-2019-10064.
11/02/2020: Reported vulnerabilities to software author directly.
27/02/2020: Public disclosure.

--[ Credits:

This vulnerability was discovered by Nicolas Massaviol and Jonathan
Brossard from Moabi.com
