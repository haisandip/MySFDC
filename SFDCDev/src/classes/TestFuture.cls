global class TestFuture {
	@future
    public static void callFuture(integer i)
    {
        system.debug('Called from future '+ i);
    }
}