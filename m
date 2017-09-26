X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["891" "Tuesday" "26" "September" "2017" "17:10:35" "+0800" "=?ISO-8859-1?Q?NOIRFATE?=" "noirfate@vip.qq.com" "<tencent_67D03AC71B42EFBB2FE69E9FC1E18DDEE405@qq.com>" "20" "[oss-security] ImageMagick : CVE-2017-14741 : Infinite loop in ReadCAPTIONImage" nil nil nil "9" "2017092609:10:35" "[oss-security] ImageMagick : CVE-2017-14741 : Infinite loop in ReadCAPTIONImage" (number mark "U       noirfate@vip Sep 26   20/891   " thread-indent "\"[oss-security] ImageMagick : CVE-2017-14741 : Infinite loop in ReadCAPTIONImage\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7443 invoked by uid 550); 26 Sep 2017 11:00:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17842 invoked from network); 26 Sep 2017 09:10:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vip.qq.com;
	s=s201512; t=1506417036;
	bh=ts3Eboi5CUn4wPUFW47U0kx4EFiNZQ6CxM44FWQb8as=;
	h=From:To:Subject:Mime-Version:Content-Type:Content-Transfer-Encoding:Date:Message-ID;
	b=Ry/g4xx9hn1tG4ljS/rgTJT2B0VssSJRmpuSODf9tGZMOW6GlzzEQAR3YNw/LU3ry
	 hu4Qdjbq2AINEQjphwRSdhhQTKzTPMv30+kOjHeauwKZq2BIBVEWz5Q7ckvBPcN/yn
	 6ZKSHPUDAd2HNEAuEobOuh052g1cKdV0eTXQTkuA=
X-QQ-FEAT: 3GtnPQ8BMmZCoHsoE5zapva+7yg3UO5xWVJ63+6X6xBZh5nDOK8klOfTjH5xe
	ERFzMhEWJv5KEjSKoYB2C0pVipSLPQoD2zQVQ4hAMWSe7ggrZUmmGj0zmLHeOQZbY4fgN0a
	0QrRhkCodZ4pPuU3cY0AX+74eSHf2jqg8MgBqoNfD0hK28i9LOVNBcwRzx4+PJpVcUOYND8
	3486x9Qfnzt2ETPVs3KAO1/y7IHq0/vUk6QJmN40VnFeIo6br6+0iWcOwtN2OUOeWT8oxn7
	9IYBXStfRulIwey2GtFRWWkO4=
X-QQ-SSF: 00000000000000F000000000000000A
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 106.120.183.218
X-QQ-STYLE: 
X-QQ-mid: webmail598t1506417035t5942869
From: "=?ISO-8859-1?B?Tk9JUkZBVEU=?=" <noirfate@vip.qq.com>
To: "=?ISO-8859-1?B?b3NzLXNlY3VyaXR5?=" <oss-security@lists.openwall.com>
Mime-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_59CA198B_0CD7A660_417AE3D1"
Content-Transfer-Encoding: 8Bit
Date: Tue, 26 Sep 2017 17:10:35 +0800
X-Priority: 3
Message-ID: <tencent_67D03AC71B42EFBB2FE69E9FC1E18DDEE405@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-SENDSIZE: 520
Feedback-ID: webmail:vip.qq.com:bgweb:bgweb115
Subject: [oss-security] ImageMagick : CVE-2017-14741 : Infinite loop in ReadCAPTIONImage

------=_NextPart_59CA198B_0CD7A660_417AE3D1
Content-Type: text/plain;
	charset="ISO-8859-1"
Content-Transfer-Encoding: base64

RGVzY3JpcHRpb246VGhlIFJlYWRDQVBUSU9OSW1hZ2UgZnVuY3Rpb24gaW4g
Y29kZXJzL2NhcHRpb24uYyBpbiBJbWFnZU1hZ2ljayBhbGxvd3MgYXR0YWNr
ZXJzIHRvIGNhdXNlIGEgZGVuaWFsIG9mIHNlcnZpY2UgKGluZmluaXRlIGxv
b3ApIHZpYSBhIGNyYWZ0ZWQgZm9udCBmaWxlLkFmZmVjdGVkIHZlcnNpb246
SW1hZ2VNYWdpY2sgNy4wLjctMyAobWF5YmUgcHJldmlvdXMgdmVyc2lvbnMg
YXJlIGFmZmVjdGVkIGFzIHdlbGwpRml4ZWQgdmVyc2lvbjpJbWFnZU1hZ2lj
ayA3LjAuNy00Q29tbWl0IGZpeDpodHRwczovL2dpdGh1Yi5jb20vSW1hZ2VN
YWdpY2svSW1hZ2VNYWdpY2svY29tbWl0LzdkOGUxNDg5OWM1NjIxNTdjNzc2
MGE3N2ZjOTE2MjVhMjdjYjU5NmZEZXRhaWxzOmh0dHBzOi8vZ2l0aHViLmNv
bS9JbWFnZU1hZ2ljay9JbWFnZU1hZ2ljay9pc3N1ZXMvNzcxQ3JlZGl0OlRo
aXMgYnVnIHdhcyBkaXNjb3ZlcmVkIGJ5IFlpaGFuIExpYW4gb2YgR2VhclRl
YW0gYXQgUWlob28zNjAgQ1ZFOkNWRS0yMDE3LTE0NzQx

------=_NextPart_59CA198B_0CD7A660_417AE3D1--

