describe "Android", ->

  [mobile, userAgent] = [null, null]

  beforeEach ->
    [mobile, userAgent] = [null, null]

  describe "Phone UserAgent", ->

    beforeEach ->
      userAgent = "Mozilla/5.0 (Linux; <Android Version>; <Build Tag etc.>) AppleWebKit/<WebKit Rev> (KHTML, like Gecko) Chrome/<Chrome Rev> Mobile Safari/<WebKit Rev>"
      mobile = new isMobile.Class userAgent

    it "should be an Android Phone", ->
      expect(mobile.android.phone).toBe true

    it "should not be an Android Tablet", ->
      expect(mobile.android.tablet).not.toBe true

    it "should be an Android device", ->
      expect(mobile.android.device).toBe true


  describe "Tablet UserAgent", ->

    beforeEach ->
      userAgent = "Mozilla/5.0 (Linux; <Android Version>; <Build Tag etc.>) AppleWebKit/<WebKit Rev>(KHTML, like Gecko) Chrome/<Chrome Rev> Safari/<WebKit Rev>"
      mobile = new isMobile.Class userAgent

    it "should not be an Android Phone", ->
      expect(mobile.android.phone).not.toBe true

    it "should be an Android Tablet", ->
      expect(mobile.android.tablet).toBe true

    it "should be an Android device", ->
      expect(mobile.android.device).toBe true

