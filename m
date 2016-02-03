X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4064" "Wednesday" "3" "February" "2016" "10:40:47" "+0200" "Dmitry Kasyanov" "dkasyanov@cloudlinux.com" "<CAC1DjbatXqoCShdq+QsFyZ9j51=YCXzyoYA+P_G5jYXggCwjfw@mail.gmail.com>" "144" "[oss-security] CVE Request: PHP-5.5.31: multiple security vulnerabilities" "^Date:" nil nil "2" "2016020308:40:47" "[oss-security] CVE Request: PHP-5.5.31: multiple security vulnerabilities" (number mark "U       dkasyanov@cl Feb  3  144/4064  " thread-indent "\"[oss-security] CVE Request: PHP-5.5.31: multiple security vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16330 invoked by uid 550); 3 Feb 2016 08:43:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11456 invoked from network); 3 Feb 2016 08:41:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudlinux-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=1Nsd6VKtd6NSBg/vxaNWNK6JweGVKWdryZMgqVFDE4Y=;
        b=PqxUurbLW2Ej1OgvqMj/iQqwxPDrvnsfPI1tdWJoml+or03BUNN8Tqs+00SNJWRbR/
         NmvSGuCTCQhq2xGECmmfThegrRhQS1evxqjwCv5281j7mpSCKQProvicp6JCHfhYs8XN
         9MMqojJCQUmqCzk9CWo/s8eLW//8B9QG5WBGT8wgqyhoOHdgJsGRO/Ms/mdkanN8ncXA
         K8uKwfMyR20zuJOvnfRxJy9C3jFeO30foc5K7IHoVNA/e5m7dKmq6xg0YhJuWDmEIOkq
         Z5GCMwVdlCzF5x3Q9kGnwjDQb4X8nrD45aMcreKi9GZsIkgzRArjTAG69lviIdbYQM4q
         7QGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=1Nsd6VKtd6NSBg/vxaNWNK6JweGVKWdryZMgqVFDE4Y=;
        b=JnC29pzxiOQSqFYGUyjuZ5lX8zuRTQCIHOp2zIxF+b9L4kJeGFu5JpWxO/iaHcG0xi
         S2hmW/sw9ZKl8q8ZQsRHHYn3bzwQsAleGTJ1JI/KLE5P7mcYYcQUZw1hZm6vPKJMsxQK
         pFGLCafqlNHDlDEYvFTplPXqy5PFsipqFSzuHtCT0uECHK5d//R/GQ17t3JV6wwcDRCZ
         jcTXigu+JF0bRwQmvCXCxoRL1WtVucZ28xxhI7QwW3qIg0S/FeAVQ7pv9yH6+cFfGBY0
         dmEJTZvRajzTSfImMeeTWx1BgjqRGMPuOsf1rRN9k5tZYVmS9xCS0i+er9xnL3DPTela
         yt+w==
X-Gm-Message-State: AG10YOQOqN9LNYiHqIHHjHvSEfucXvkIL1Zc4JLkbQejLm6Je2Vow1noGHacbIKyPcReFhpSQULmZKipWgi+0Q==
MIME-Version: 1.0
X-Received: by 10.31.6.143 with SMTP id 137mr175994vkg.133.1454488847785; Wed,
 03 Feb 2016 00:40:47 -0800 (PST)
Message-ID: <CAC1DjbatXqoCShdq+QsFyZ9j51=YCXzyoYA+P_G5jYXggCwjfw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1143d3381a3810052ad99386
Date: Wed, 3 Feb 2016 10:40:47 +0200
From: Dmitry Kasyanov <dkasyanov@cloudlinux.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: PHP-5.5.31: multiple security vulnerabilities
To: oss-security@lists.openwall.com

--001a1143d3381a3810052ad99386
Content-Type: text/plain; charset=UTF-8

There are some security vurnelabilities in PHP without CVEs assigned.
Can CVEs be assigned to these issues?


bug70661: Use After Free Vulnerability in WDDX Packet Deserialization
https://bugs.php.net/bug.php?id=70661

A use-after free vulnerability was found that could possible lead to
arbitrary remote codeexecution. Vulnerable code:

if (Z_TYPE_P(ent2->data) == IS_ARRAY || Z_TYPE_P(ent2->data) == IS_OBJECT) {
	target_hash = HASH_OF(ent2->data);
	if (ent1->varname) {
		if (!strcmp(ent1->varname, PHP_CLASS_NAME_VAR) &&
			Z_TYPE_P(ent1->data) == IS_STRING && Z_STRLEN_P(ent1->data)) {
			...
			/* Clean up old array entry */
			zval_ptr_dtor(&ent2->data);
				
			/* Set stack entry to point to the newly created object */
			ent2->data = obj;
					
			/* Clean up class name var entry */
			zval_ptr_dtor(&ent1->data);

During wddx packet deserialization the zval_ptr_dtor() lead ZVAL is freed
from the memory, however a crafted recordset can still use already freed
memory.


---------------

bug70741: Session WDDX Packet Deserialization Type Confusion Vulnerability

https://bugs.php.net/bug.php?id=70741

It was found that attacker can deserialize a string-type ZVAL via
php_wddx_deserialize_ex(), which means he is able to create fake HashTable
via the Z_ARRVAL_P macro with the string-type ZVAL. This could result in
arbitrary remote code execution.

Vulnerable code:

_SERIALIZER_DECODE_FUNC(wddx)
{
	...
	
	MAKE_STD_ZVAL(retval);

	if ((ret = php_wddx_deserialize_ex((char *)val, vallen, retval)) == SUCCESS) {

		for (zend_hash_internal_pointer_reset(Z_ARRVAL_P(retval));
			 zend_hash_get_current_data(Z_ARRVAL_P(retval), (void **) &ent) == SUCCESS;
			 zend_hash_move_forward(Z_ARRVAL_P(retval))) {
			 hash_type = zend_hash_get_current_key_ex(Z_ARRVAL_P(retval), &key,
&key_length, &idx, 0, NULL);


---------------

bug70728: Type Confusion Vulnerability in PHP_to_XMLRPC_worker()
https://bugs.php.net/bug.php?id=70728

It was found that an attacker can control type and val via
get_zval_xmlrpc_type() with a crafted object-type ZVAL. Z_STRVAL_P
macro and the Z_STRLEN_P macro handles a non-string-type val, which is
able to look up an arbitrary memory address. This results in leaking
arbitrary memory blocks, crash application or other issues.

Vulnerable code:

static XMLRPC_VALUE PHP_to_XMLRPC_worker (const char* key, zval*
in_val, int depth TSRMLS_DC)
{
	XMLRPC_VALUE xReturn = NULL;

	if (in_val) {
		zval* val = NULL;
		XMLRPC_VALUE_TYPE type = get_zval_xmlrpc_type(in_val, &val);
	
		if (val) {
			switch (type) {
				case xmlrpc_base64:
					if (Z_TYPE_P(val) == IS_NULL) {
						xReturn = XMLRPC_CreateValueEmpty();
						XMLRPC_SetValueID(xReturn, key, 0);
					} else {
						xReturn = XMLRPC_CreateValueBase64(key, Z_STRVAL_P(val), Z_STRLEN_P(val));
					}
					break;
				case xmlrpc_datetime:
					convert_to_string(val);
					xReturn = XMLRPC_CreateValueDateTime_ISO8601(key, Z_STRVAL_P(val));
					break;
...
XMLRPC_VALUE_TYPE get_zval_xmlrpc_type(zval* value, zval** newvalue) /* {{{ */
{
	XMLRPC_VALUE_TYPE type = xmlrpc_none;
	TSRMLS_FETCH();

	if (value) {
		switch (Z_TYPE_P(value)) {
			...
			case IS_OBJECT:
				{
					zval** attr;
					type = xmlrpc_vector;

					if (zend_hash_find(Z_OBJPROP_P(value), OBJECT_TYPE_ATTR,
sizeof(OBJECT_TYPE_ATTR), (void**) &attr) == SUCCESS) {
						if (Z_TYPE_PP(attr) == IS_STRING) {
							type = xmlrpc_str_as_type(Z_STRVAL_PP(attr));
						}
					}
					break;
				}
		}

		/* if requested, return an unmolested (magic removed) copy of the value */
		if (newvalue) {
			zval** val;

			if ((type == xmlrpc_base64 && Z_TYPE_P(value) != IS_NULL) || type
== xmlrpc_datetime) {
				if (zend_hash_find(Z_OBJPROP_P(value), OBJECT_VALUE_ATTR,
sizeof(OBJECT_VALUE_ATTR), (void**) &val) == SUCCESS) {
					*newvalue = *val;
				}
			} else {
				*newvalue = value;
			}
		}


Thank You!

-- 
Dmitry Kasyanov  |  CloudLinux Developer
dkasyanov@cloudlinux.com  |  Skype: korvin-san

--001a1143d3381a3810052ad99386--
