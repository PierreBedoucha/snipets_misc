    public double computeRMSD(List<Vector3f> pos, HashMap<Integer, Vector3f> positions) {
        List<Float> dist = new ArrayList<>();
//        List<Vector3f> test_disjunc = (List<Vector3f>) CollectionUtils.disjunction(pos, positions.values());
//        Preconditions.checkState(pos.size() == positions.size());
//        Iterator<Vector3f> iter1 = pos.iterator();
//        Iterator<Entry<Integer, Vector3f>> iter2 = positions.entrySet().iterator();
//        int posi = 0; 
//        while(iter1.hasNext() || iter2.hasNext()) {
//            Vector3f value1 = iter1.next();
//            Entry<Integer, Vector3f> e2 = iter2.next();
//            if (posi == e2.getKey()) {
//                 dist.add(VecmathUtils.distance(value1, e2.getValue()));
//            }
//            posi++;
//        }
//        
        for(int i=0; i < pos.size(); i++) {
            if (positions.containsKey(i)) {
                dist.add(VecmathUtils.distance(pos.get(i), positions.get(i)));
            }
        }
        dist = dist.stream().map(x -> x * x).collect(Collectors.toList());
        double rmsd = Math.sqrt((dist.stream().reduce((a, b) -> a + b).get()) / positions.size());

        return rmsd;
    }
