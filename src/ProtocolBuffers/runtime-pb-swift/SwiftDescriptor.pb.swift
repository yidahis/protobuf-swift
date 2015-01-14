// Generated by the protocol buffer compiler.  DO NOT EDIT!

import Foundation
public var SwiftDescriptorRootswiftFileOptions:ConcreateExtensionField {
   get {
       return SwiftDescriptorRoot.sharedInstance.SwiftDescriptorRootswiftFileOptionsStatic
   }
}
public struct SwiftDescriptorRoot {
  public static var sharedInstance : SwiftDescriptorRoot {
   struct Static {
       static let instance : SwiftDescriptorRoot = SwiftDescriptorRoot()
   }
   return Static.instance
  }
  var SwiftDescriptorRootswiftFileOptionsStatic:ConcreateExtensionField
  public var extensionRegistry:ExtensionRegistry

  init() {
    SwiftDescriptorRootswiftFileOptionsStatic = ConcreateExtensionField(type:ExtensionType.ExtensionTypeMessage, extendedClass:PBFileOptions.self, fieldNumber: 5092014, defaultValue:SwiftFileOptions(), messageOrGroupClass:SwiftFileOptions.self, isRepeated:false, isPacked:false, isMessageSetWireFormat:false)
    extensionRegistry = ExtensionRegistry()
    registerAllExtensions(extensionRegistry)
    PBDescriptorRoot.sharedInstance.registerAllExtensions(extensionRegistry)
  }
  public func registerAllExtensions(registry:ExtensionRegistry) {
    registry.addExtension(SwiftDescriptorRootswiftFileOptionsStatic)
  }
  public static func swiftFileOptions() -> ConcreateExtensionField {
       return SwiftDescriptorRoot.sharedInstance.SwiftDescriptorRootswiftFileOptionsStatic
  }
}



//Enum type declaration start 

public enum AccessControl:Int32 {
  case InternalEntities = 0
  case PublicEntities = 1

  public static func IsValidValue(value:Int32) ->Bool {
      if let check = AccessControl(rawValue:value) {
          return true
      }
      return false
  }
}



//Enum type declaration end 

public func == (lhs: SwiftFileOptions, rhs: SwiftFileOptions) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasClassPrefix == rhs.hasClassPrefix) && (!lhs.hasClassPrefix || lhs.classPrefix == rhs.classPrefix)
  fieldCheck = fieldCheck && (lhs.hasEntitiesAccessControl == rhs.hasEntitiesAccessControl) && (!lhs.hasEntitiesAccessControl || lhs.entitiesAccessControl == rhs.entitiesAccessControl)
  fieldCheck = fieldCheck && (lhs.hasCompileForFramework == rhs.hasCompileForFramework) && (!lhs.hasCompileForFramework || lhs.compileForFramework == rhs.compileForFramework)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

final public class SwiftFileOptions : GeneratedMessage {
  public private(set) var hasClassPrefix:Bool = false
  public private(set) var classPrefix:String = ""

  public private(set) var entitiesAccessControl:AccessControl = AccessControl.InternalEntities
  public private(set) var hasEntitiesAccessControl:Bool = false
  public private(set) var hasCompileForFramework:Bool = false
  public private(set) var compileForFramework:Bool = true

  required public init() {
       super.init()
  }
  override public func isInitialized() -> Bool {
   return true
  }
  override public func writeToCodedOutputStream(output:CodedOutputStream) {
    if hasClassPrefix {
      output.writeString(1, value:classPrefix)
    }
    if hasEntitiesAccessControl {
      output.writeEnum(2, value:entitiesAccessControl.rawValue)
    }
    if hasCompileForFramework {
      output.writeBool(3, value:compileForFramework)
    }
    unknownFields.writeToCodedOutputStream(output)
  }
  override public func serializedSize() -> Int32 {
    var serialize_size:Int32 = memoizedSerializedSize
    if serialize_size != -1 {
     return serialize_size
    }

    serialize_size = 0
    if hasClassPrefix {
      serialize_size += classPrefix.computeStringSize(1)
    }
    if (hasEntitiesAccessControl) {
      serialize_size += entitiesAccessControl.rawValue.computeEnumSize(2)
    }
    if hasCompileForFramework {
      serialize_size += compileForFramework.computeBoolSize(3)
    }
    serialize_size += unknownFields.serializedSize()
    memoizedSerializedSize = serialize_size
    return serialize_size
  }
  public class func parseFromData(data:NSData) -> SwiftFileOptions {
    return SwiftFileOptions.builder().mergeFromData(data, extensionRegistry:SwiftDescriptorRoot.sharedInstance.extensionRegistry).build()
  }
  public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) -> SwiftFileOptions {
    return SwiftFileOptions.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFromInputStream(input:NSInputStream) -> SwiftFileOptions {
    return SwiftFileOptions.builder().mergeFromInputStream(input).build()
  }
  public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) ->SwiftFileOptions {
    return SwiftFileOptions.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFromCodedInputStream(input:CodedInputStream) -> SwiftFileOptions {
    return SwiftFileOptions.builder().mergeFromCodedInputStream(input).build()
  }
  public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> SwiftFileOptions {
    return SwiftFileOptions.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  public class func builder() -> SwiftFileOptionsBuilder {
    return SwiftFileOptions.classBuilder() as SwiftFileOptionsBuilder
  }
  public func builder() -> SwiftFileOptionsBuilder {
    return classBuilder() as SwiftFileOptionsBuilder
  }
  public override class func classBuilder() -> MessageBuilder {
    return SwiftFileOptionsBuilder()
  }
  public override func classBuilder() -> MessageBuilder {
    return SwiftFileOptions.builder()
  }
  public func toBuilder() -> SwiftFileOptionsBuilder {
    return SwiftFileOptions.builderWithPrototype(self)
  }
  public class func builderWithPrototype(prototype:SwiftFileOptions) -> SwiftFileOptionsBuilder {
    return SwiftFileOptions.builder().mergeFrom(prototype)
  }
  override public func writeDescriptionTo(inout output:String, indent:String) {
    if hasClassPrefix {
      output += "\(indent) classPrefix: \(classPrefix) \n"
    }
    if (hasEntitiesAccessControl) {
      output += "\(indent) entitiesAccessControl: \(entitiesAccessControl.rawValue)\n"
    }
    if hasCompileForFramework {
      output += "\(indent) compileForFramework: \(compileForFramework) \n"
    }
    unknownFields.writeDescriptionTo(&output, indent:indent)
  }
  override public var hashValue:Int {
      get {
          var hashCode:Int = 7
          if hasClassPrefix {
             hashCode = (hashCode &* 31) &+ classPrefix.hashValue
          }
          if hasEntitiesAccessControl {
             hashCode = (hashCode &* 31) &+ Int(entitiesAccessControl.rawValue)
          }
          if hasCompileForFramework {
             hashCode = (hashCode &* 31) &+ compileForFramework.hashValue
          }
          hashCode = (hashCode &* 31) &+  unknownFields.hashValue
          return hashCode
      }
  }


  //Meta information declaration start

  override public class func className() -> String {
      return "SwiftFileOptions"
  }
  override public func className() -> String {
      return "SwiftFileOptions"
  }
  override public func classMetaType() -> GeneratedMessage.Type {
      return SwiftFileOptions.self
  }


  //Meta information declaration end

}

final public class SwiftFileOptionsBuilder : GeneratedMessageBuilder {
  private var builderResult:SwiftFileOptions

  required override public init () {
     builderResult = SwiftFileOptions()
     super.init()
  }
  public var hasClassPrefix:Bool {
       get {
            return builderResult.hasClassPrefix
       }
  }
  public var classPrefix:String {
       get {
            return builderResult.classPrefix
       }
       set (value) {
           builderResult.hasClassPrefix = true
           builderResult.classPrefix = value
       }
  }
  func setClassPrefix(value:String)-> SwiftFileOptionsBuilder {
    self.classPrefix = value
    return self
  }
  public func clearClassPrefix() -> SwiftFileOptionsBuilder{
       builderResult.hasClassPrefix = false
       builderResult.classPrefix = ""
       return self
  }
    public var hasEntitiesAccessControl:Bool{
        get {
            return builderResult.hasEntitiesAccessControl
        }
    }
    public var entitiesAccessControl:AccessControl {
        get {
            return builderResult.entitiesAccessControl
        }
        set (value) {
            builderResult.hasEntitiesAccessControl = true
            builderResult.entitiesAccessControl = value
        }
    }
    func setEntitiesAccessControl(value:AccessControl)-> SwiftFileOptionsBuilder {
      self.entitiesAccessControl = value
      return self
    }
    public func clearEntitiesAccessControl() -> SwiftFileOptionsBuilder {
       builderResult.hasEntitiesAccessControl = false
       builderResult.entitiesAccessControl = .InternalEntities
       return self
    }
  public var hasCompileForFramework:Bool {
       get {
            return builderResult.hasCompileForFramework
       }
  }
  public var compileForFramework:Bool {
       get {
            return builderResult.compileForFramework
       }
       set (value) {
           builderResult.hasCompileForFramework = true
           builderResult.compileForFramework = value
       }
  }
  func setCompileForFramework(value:Bool)-> SwiftFileOptionsBuilder {
    self.compileForFramework = value
    return self
  }
  public func clearCompileForFramework() -> SwiftFileOptionsBuilder{
       builderResult.hasCompileForFramework = false
       builderResult.compileForFramework = true
       return self
  }
  override public var internalGetResult:GeneratedMessage {
       get {
          return builderResult
       }
  }
  public override func clear() -> SwiftFileOptionsBuilder {
    builderResult = SwiftFileOptions()
    return self
  }
  public override func clone() -> SwiftFileOptionsBuilder {
    return SwiftFileOptions.builderWithPrototype(builderResult)
  }
  public override func build() -> SwiftFileOptions {
       checkInitialized()
       return buildPartial()
  }
  public func buildPartial() -> SwiftFileOptions {
    var returnMe:SwiftFileOptions = builderResult
    return returnMe
  }
  public func mergeFrom(other:SwiftFileOptions) -> SwiftFileOptionsBuilder {
    if (other == SwiftFileOptions()) {
     return self
    }
    if other.hasClassPrefix {
         classPrefix = other.classPrefix
    }
    if other.hasEntitiesAccessControl {
         entitiesAccessControl = other.entitiesAccessControl
    }
    if other.hasCompileForFramework {
         compileForFramework = other.compileForFramework
    }
    mergeUnknownFields(other.unknownFields)
    return self
  }
  public override func mergeFromCodedInputStream(input:CodedInputStream) ->SwiftFileOptionsBuilder {
       return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
  }
  public override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> SwiftFileOptionsBuilder {
    var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
    while (true) {
      var tag = input.readTag()
      switch tag {
      case 0: 
        self.unknownFields = unknownFieldsBuilder.build()
        return self

      case 10 :
        classPrefix = input.readString()

      case 16 :
        let valueIntentitiesAccessControl = input.readEnum()
        if let enumsentitiesAccessControl = AccessControl(rawValue:valueIntentitiesAccessControl){
             entitiesAccessControl = enumsentitiesAccessControl
        } else {
             unknownFieldsBuilder.mergeVarintField(2, value:Int64(valueIntentitiesAccessControl))
        }

      case 24 :
        compileForFramework = input.readBool()

      default:
        if (!parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag)) {
           unknownFields = unknownFieldsBuilder.build()
           return self
        }
      }
    }
  }
}


// @@protoc_insertion_point(global_scope)
