describe "Apple", ->
  [mobile, userAgent] = [null, null]

  beforeEach ->
    [mobile, userAgent] = [null, null]

  describe "iPhone UserAgent", ->

    beforeEach ->
      userAgent = "Mozilla/5.0 (iPhone; U; CPU like Mac OS X; en) AppleWebKit/420+ (KHTML, like Gecko) Version/3.0 Mobile/1A543 Safari/419.3"
      mobile = new isMobile.Class userAgent

    it "should be an iPhone", ->
      expect(mobile.apple.phone).toBe true

    it "should not be an iPad", ->
      expect(mobile.apple.tablet).not.toBe true

    it "should not be an iPod", ->
      expect(mobile.apple.ipod).not.toBe true

    it "should be an Apple device", ->
      expect(mobile.apple.device).toBe true


  describe "iPad UserAgent", ->

    beforeEach ->
      userAgent = "Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.10"
      mobile = new isMobile.Class userAgent

    it "should not be an iPhone", ->
      expect(mobile.apple.phone).not.toBe true

    it "should be an iPad", ->
      expect(mobile.apple.tablet).toBe true

    it "should not be an iPod", ->
      expect(mobile.apple.ipod).not.toBe true

    it "should be an Apple device", ->
      expect(mobile.apple.device).toBe true


  describe "iPod UserAgent", ->

    beforeEach ->
      userAgent = "Mozilla/5.0 (iPod; U; CPU like Mac OS X; en) AppleWebKit/420.1 (KHTML, like Gecko) Version/3.0 Mobile/3A101a Safari/419.3"
      mobile = new isMobile.Class userAgent

    it "should not be an iPhone", ->
      expect(mobile.apple.phone).not.toBe true

    it "should not be an iPad", ->
      expect(mobile.apple.tablet).not.toBe true

    it "should be an iPod", ->
      expect(mobile.apple.ipod).toBe true

    it "should be an Apple device", ->
      expect(mobile.apple.device).toBe true


